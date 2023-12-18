mtype = {MSG, ACK};
chan toS = [1] of {mtype};
chan toR = [1] of {mtype};
bool flag = false;

proctype Sender() {
   toR!MSG;
   toS?ACK;
   flag = true;
}

proctype Receiver() {
   toR?MSG;
   toS!ACK;
}

init {
     run Sender();
     run Receiver();
     assert(flag);
}
