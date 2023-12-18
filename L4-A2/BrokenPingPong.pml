
#define BROKEN 



/* constants and mtypes */

mtype = { BALL } 
 

/* global variables and channels */
chan ptoP[2] = [2] of { mtype }
chan ground = [2] of { mtype }
int ballsInGame = 0;
int ballsOnGround = 0;
/* macros for the property interface -- needed for reference properties */ 
#define allBalls (ballsInGame + ballsOnGround)


/* Your LTL properties */

ltl alwaysAtMostOneBall { [](allBalls <= 1) } 

/* Mandatory sanity-check LTL properties: these must pass for non-zero grade */

#ifdef BROKEN
  ltl sanityCheckForAllBallsMustNotFailForCredit { (allBalls == 0) && ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && []true }
#else
  ltl initiallyNoBallsMustNotFailForCredit { (allBalls == 0) && []true }
  ltl allBallsCannotBeConstantMustNotFailForCredit { ![](allBalls == 0) && ![](allBalls == 1) && ![](allBalls == 2) && ([]true) }
#endif


/* proctypes */

/* comment your code only if necessary, 
   explaining what each proctype is supposed to be 
*/


proctype Referee() {
	 d_step {
	 	ballsInGame++;
	 	ptoP[0]!BALL; 
	 }
	 
	 do
	 	:: d_step {
		 	   ground?BALL;
		 	   ballsOnGround--;
		 	   ballsInGame++;
		 	   ptoP[0]!BALL;
	 	   }	

	 od
}

proctype Player(byte i) {
		
	do
	  :: ptoP[i]?BALL;
		 if
		 :: skip -> ptoP[1-i]!BALL;
		 :: skip -> d_step { ground!BALL; ballsOnGround++; ballsInGame--;}
		 fi
	od;
}
			

init { /* if needed */
	run Referee();
	run Player(0);
	run Player(1);
}

/* monitor processes for invariants (optional) */
/* choose and appropriate name and explain what this does if you use it */

/*active proctype myPropertyMonitor() {
 ... 
}*/

    
