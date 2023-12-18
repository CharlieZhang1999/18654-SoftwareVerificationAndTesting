mtype { P, V }

chan s = [1] of { mtype }

active proctype Sema() {	
	bit free = 1;
	
    do
	 :: (free == 1) -> 
        end: s!P; free = 0;
	 :: (free == 0) ->
		s?V; free = 1;
	od;	
}

active [2] proctype User() {
   // terminating	
	s?P;	       
    critical: skip;   
	s!V;
}

// verification cannot succeed due to illegal P/V interleaving...
