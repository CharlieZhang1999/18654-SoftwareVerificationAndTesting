
chan s2r = [2] of { bit }	

proctype Sender() {
   s2r!0;
   s2r!1;
}

proctype Sender2() {
   s2r!0;
   s2r!1;
}

proctype Receiver() {
   if
   ::s2r?0 -> s2r?1;s2r?0;s2r?1;
   ::s2r?1 -> s2r?0;s2r?1;s2r?0;
   fi;
}

init {
	run Sender();
	run Sender2();
	run Receiver();
}