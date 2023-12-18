

/* constants and mtypes */

/* global variables and channels */
chan ptoP[2] = [2] of { mtype }
chan ground = [2] of { mtype }
byte getBallsWithPlayer[2]; 

/* these two macros are for JugglersBW.pml only */
#define  WHITE 0
#define  BLACK 1

/* macros for the property interface -- needed for reference properties */ 
#define allBalls (len(ptoP[0]) + len(ptoP[1]) + getBallsWithPlayer[WHITE] + getBallsWithPlayer[BLACK])
#define balls(color) getBallsWithPlayer[color]

/* Your LTL properties */
ltl alwaysEventuallyGameOn { []<>(allBalls >= 1) } 
ltl alwaysAtMostTwoBalls { [](allBalls <= 2) }
/*ltl notalwaysEventuallyGameOn_FAIL { []!(allBalls >= 1) } */
ltl alwaysEventuallyTwoBalls { <>[](allBalls >= 1) -> []<>(allBalls == 2) }
ltl notEventuallyAlwaysGameOn_FAIL { !(<>[](allBalls == 2))}
ltl notPossiblyAllBallsAreDropped_FAIL { <>[](allBalls >= 1) }
ltl alwaysDifferentColors { []((allBalls >= 1) -> (balls(WHITE) <= 1 && balls(BLACK) <= 1))}

/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/


proctype Referee() {
 	ptoP[0]!WHITE; 
 	ptoP[0]!BLACK; 
	bit color;
 	do
	:: ground?color -> ptoP[0]!color;   
	od
}

proctype Player(byte i) {
	bit color;
	do
	  :: d_step{
	  		ptoP[i]?color; 
	  		getBallsWithPlayer[color]++;
	  	}
	 	if
		 :: skip -> d_step { ptoP[1-i]!color; getBallsWithPlayer[color]--;}
		 :: skip -> d_step { ground!color; getBallsWithPlayer[color]--;}
	 	fi
	od;
}
			

init { /* if needed */
	run Referee();
	run Player(0);
	run Player(1);
}