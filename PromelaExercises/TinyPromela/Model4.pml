
chan s2r = [2] of { bit }	

proctype Sender() {
   do
   :: s2r!0; s2r!1;
   od
}

proctype Sender2() {
   do
   :: s2r!1; s2r!0;
   od
}

proctype Receiver() {
   bit seq_in;
   s2r!seq_in;
   if
   ::(seq_in == 0)	-> 
   		do
   		::s2r?1 -> 
   				if 
   				:: s2r?0 -> skip
   				:: s2r?1 -> break
   				fi
   		od;
   	::(seq_in == 1) ->
   		do
   		::s2r?0 -> 
   				if 
   				:: s2r?1 -> skip
   				:: s2r?0 -> break
   				fi
   		od
   	fi
}

init {
	run Sender();
	run Sender2();
	run Receiver();
}