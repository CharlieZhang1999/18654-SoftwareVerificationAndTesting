chan s2r = [2] of { bit }	

proctype Sender() {
   s2r!0;
   s2r!1;
}

proctype Receiver() {
   s2r?0;
   s2r?1;
}

init {
	run Sender();
	run Receiver();
}
