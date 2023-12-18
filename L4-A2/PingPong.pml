/*
#define BROKEN 
*/


/* constants and mtypes */

mtype = { BALL } 
 

/* global variables and channels */
chan ptoP[2] = [2] of { mtype }
int ballsInTheAir = 0;
int ballsWithPlayer = 0;
/* macros for the property interface -- needed for reference properties */ 
#define allBalls (ballsInTheAir + ballsWithPlayer)


/* Your LTL properties */

ltl singleBallForever {<>[](allBalls == 1) } 

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
	 	ballsInTheAir++;
	 	ptoP[0]!BALL; 
	 }
}

proctype Player(byte i) {	
	do
	  :: d_step {
      		ptoP[i]?BALL;
	        ballsInTheAir--;
	        ballsWithPlayer++;
        }
          d_step {
	        ballsInTheAir++;
	        ballsWithPlayer--;  
	        ptoP[1-i]!BALL;
	    }	   
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

    
