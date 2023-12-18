mtype { P, V }

chan s = [0] of { mtype }

active proctype Sema() {	
	bit free = 1;
	
    do
	 :: (free == 1) -> s!P; free = 0;
	 :: (free == 0) -> s?V; free = 1;
	od;
}

active [3] proctype User() {	
    // terminating
	s?P;	// enter       
    critical: skip;   
	s!V;    // leave
}

// verification fails - stops in the middle of the do-od