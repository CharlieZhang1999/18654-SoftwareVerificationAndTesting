
chan s2r = [2] of { bit }	
mtype = { ERR }
chan r2s = [2] of { mtype }	
bool finished[2];
int zeros = 0;
int ones = 0;
int lastReceived = 2;

proctype Sender(bit seq_out, id) {
   do
	   :: s2r!seq_out ->
	   		if
	   		:: r2s?ERR -> break;
	   		:: d_step {seq_out = 1 - seq_out} -> skip; 
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
    	::(received == 0 && lastReceived != 0) ->
    		d_step {
	    		zeros++;
	    		lastReceived = received;
    		}
    		
    	::(received == 1 && lastReceived != 1) ->
    		d_step {
    			ones++;
    			lastReceived = received;
    		}
    	::else -> break;
    	fi
    	    
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
	run Sender(1, 0);
	run Sender(1, 1);
	run Receiver();
}