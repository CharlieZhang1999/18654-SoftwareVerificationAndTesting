mtype { RB, GREENLIGHT, REDLIGHT, CANWALK, STOP }

chan plchan = [1] of { mtype }
chan vlchan = [1] of { mtype }
bool push = false; // Request Button, initially reset

// Property Interface
// Only the state propositions defined by macros RED, WALK, PUSH can be used in properties
// VL:red and PL:walk read local variables of VL and PL, respectively
// Do not change these macros...
#define RED   VL:red  
#define WALK  PL:walk
#define PUSH  push

active proctype PL() { // Pedestrian Light
  bool walk = false; // PL state, initially on STOP
  do
  :: plchan?RB -> 
         vlchan!REDLIGHT;
  :: plchan?CANWALK ->
         walk = true;
         pedchan!CANWALK;
         
  :: len(plchan) == 0 -> walk = false; vlchan!GREENLIGHT;
  od
}

active proctype VL() { // Vehicle Light
  bool red = true; // VL state, initially on RED
  do
  :: vlchan?REDLIGHT -> 
     red = true;
     plchan!CANWALK;
  :: vlchan?GREENLIGHT -> 
     red = false;
  :: len(vlchan) == 0 -> skip;
  od 
}

active proctype Ped() { // Pedestrian
   do
   :: pedchan?CANWALK -> 
      push = false;
   :: len(pedchan) == 0 -> 
   	  push = true;
      plchan!RB;
   od
}

// Properties

ltl initialState_INIT { !WALK && RED && !PUSH } 
ltl safePedestrian { [](WALK -> RED) } 
ltl pedestrianCanCross { [](PUSH -> <>WALK)}
ltl redStrictlyBeforeWalk { [](!WALK -> (!WALK U (RED && !WALK))) }

// To use the config file, see Vocareum instructions