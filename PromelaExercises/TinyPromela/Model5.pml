
chan s2r = [2] of { bit }	
mtype = { ERR }
chan r2s = [2] of { mtype }	


proctype Sender() {
   do
   :: s2r!0 ->
   		if
   		:: r2s?ERR -> break;
   		:: s2r!1 -> skip;
   		fi
   	::r2s?ERR -> break;
   od
}



proctype Receiver() {

   if
   ::s2r?0	-> 
   		do
   		::s2r?0 -> break;
   		::s2r?1 -> 
   				if 
   				:: s2r?0 -> skip
   				:: s2r?1 -> break;
   				fi
   		od;
   	::s2r?1 ->
   		do
   		::s2r?1 -> break;
   		::s2r?0 -> 
   				if 
   				:: s2r?1 -> skip;
   				:: s2r?0 -> break;
   				fi
   		od
   	fi
   	
   	r2s!ERR;
   	r2s!ERR;
   	timeout;
   	bit received;
   	do
   	:: len(s2r) > 0 -> s2r?received;
   	:: len(s2r) == 0 -> break;
   	od
   	
}

init {
	run Sender();
	run Sender();
	run Receiver();
}