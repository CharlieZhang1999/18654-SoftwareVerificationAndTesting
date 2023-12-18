mtype { P, V }

chan s = [0] of { mtype }

byte count = 0;
bool wantIt[2] = 0;
bool getIt[2] = 0;

// simplifying

active proctype Sema() {	
     do
	 :: s!P; s?V;
	 od;	
}

proctype User(byte i) {	
	do
	:: wantIt[i] = 1; s?P;
       count++; 	      
       critical: skip; wantIt[i] = 0; getIt[i] = 1
	   count--; 
	   s!V; getIt[i] = 0;
	od;
}


init {
	run User(0);
	run User(1);
}

/* Verification -> Liveness, Acceptance cycles,  Apply never claim */
/* Specify name of ltl */
ltl mutex { [](count < 2) }

/* These ltls need weak fairness to be turned on without p.o. reduction */
/* but weak fairness is not enough, because s?P is not continuously enabled */
ltl wantItGetIt0 { [](wantIt[0] -> <>getIt[0]) }
ltl wantItGetIt1 { [](wantIt[1] -> <>getIt[1]) }


