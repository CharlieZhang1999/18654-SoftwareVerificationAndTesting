mtype = { RED, GREEN, ORANGE }
	
active proctype TrafficLight() {
	mtype status = GREEN; 
	
	do
	:: (status == GREEN) -> status = ORANGE; 
	:: (status == ORANGE) -> status = RED; 
	:: (status == RED) ->  status = GREEN; 
	:: status = RED;
	od;
}
