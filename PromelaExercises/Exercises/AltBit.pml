mtype = { MSG0, MSG1, ACK0, ACK1 }

chan	to_sndr = [2] of { mtype }
chan	to_rcvr = [2] of { mtype }

active proctype Sender() {
	again:	
	to_rcvr!MSG1;
	to_sndr?ACK1;
	to_rcvr!MSG0;
	to_sndr?ACK0;
	goto again;
}

active proctype Receiver() {
	again:	
	to_rcvr?MSG1;
	to_sndr!ACK1;
	to_rcvr?MSG0;
	to_sndr!ACK0;
	goto again;
}
	