
chan s2r = [2] of { bit }	
mtype = { ERR }
chan r2s = [2] of { mtype }	
bool finished[2];
int count[2];
int lastReceived = 2;
int bitSent = 0;

proctype Sender(bit seq_out, id) {
   
   do
	   :: s2r!seq_out ->
	   		if
	   		:: r2s?ERR -> break;
	   		:: d_step {seq_out = 1 - seq_out; bitSent++;} -> skip; 
	   		fi;
	   	::r2s?ERR -> break;
   od
   finished[id] = true;
}



proctype Receiver() {

    bit received;
    do
    ::s2r?received ->
    	if 
    	:: (bitSent >= 10) -> break;
    	::(received == 0 && lastReceived != 0) ->
    		d_step {
	    		count[0]++;
	    		lastReceived = received;
    		}
    		
    	::(received == 1 && lastReceived != 1) ->
    		d_step {
    			count[1]++;
    			lastReceived = received;
    		}
    	::else -> break;
    	fi
    	assert((count[0] - count[1] <= 1) && (count[1] - count[0] <= 1));
    od

   	r2s!ERR;
   	r2s!ERR;
   	timeout;
   	assert(finished[0]);
   	assert(finished[1]);
   	
   	
   	do
   	:: len(s2r) > 0 -> s2r?received;
   	:: len(s2r) == 0 -> break;
   	od
   	
}

init {
	run Sender(0, 0);
	run Sender(1, 1);
	run Receiver();
}