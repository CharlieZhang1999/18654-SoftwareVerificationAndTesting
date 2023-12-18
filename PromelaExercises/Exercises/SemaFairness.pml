mtype { P, V }
chan sema = [0] of { mtype }

bit in[2] = 0;

/* no starvation property template */
#define ns(i) ([](!in[i] ->  <>(in[i])))

ltl ns0 { ns(0) }
ltl ns1 { ns(1) }
ltl mutex { [](!in[0] || !in[1]) }

active proctype Sema() {	
     do
	 :: sema?P -> sema!V;
	 od
}

proctype User(bit i) {	
  again: 
  sema!P;	     
     in[i] = 1;
  atomic { sema?V; in[i] = 0; }
  goto again;
}

init {
   run User(0);
   run User(1);
}