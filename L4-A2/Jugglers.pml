

/* constants and mtypes */

mtype = { BALL } 
 

/* global variables and channels */
chan ptoP[2] = [2] of { mtype }
chan ground = [2] of { mtype }
int ballsWithPlayer = 0;

/* macros for the property interface -- needed for reference properties */ 
#define allBalls (len(ptoP[0]) + len(ptoP[1]) + ballsWithPlayer)


/* Your LTL properties */
ltl alwaysEventuallyGameOn { []<>(allBalls >= 1) } 
ltl alwaysAtMostTwoBalls { [](allBalls <= 2) }
/*ltl notalwaysEventuallyGameOn_FAIL { []!(allBalls >= 1) } */
ltl alwaysEventuallyTwoBalls { <>[](allBalls >= 1) -> []<>(allBalls == 2) }
ltl notEventuallyAlwaysGameOn_FAIL { !<>[](allBalls == 2)}
ltl notPossiblyAllBallsAreDropped_FAIL { <>[](allBalls >= 1) }


/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/


proctype Referee() {
 	ptoP[0]!BALL; 
 	ptoP[0]!BALL; 
	 
 	do
	:: ground?BALL -> ptoP[0]!BALL;   
	od
}

proctype Player(byte i) {
		
	do
	  :: d_step{
	  		ptoP[i]?BALL; 
	  		ballsWithPlayer++;
	  	}
	 	if
		 :: skip -> d_step { ptoP[1-i]!BALL; ballsWithPlayer--;}
		 :: skip -> d_step { ground!BALL; ballsWithPlayer--;}
	 	fi
	od;
}
			

init { /* if needed */
	run Referee();
	run Player(0);
	run Player(1);
}