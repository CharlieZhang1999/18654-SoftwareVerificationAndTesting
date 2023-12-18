mtype = { MSG, ACK }
chan toS = [1] of { mtype }
chan toR = [1] of { mtype }
bool flag = false;

proctype Sender(chan in, out; mtype msg, ack) {
   out!msg;
   in?ack;
   flag = true;
}

proctype Receiver(chan in, out; mtype msg, ack) {
   in?msg;
   out!ack;
}

init {
     run Sender(toR, toS, MSG, ACK);
     run Receiver(toS, toR, MSG, ACK);
     timeout;
     assert(flag);
}