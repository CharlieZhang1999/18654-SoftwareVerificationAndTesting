byte x = 0;
byte y = 0; 
int mutex = 0;  

proctype X() {
	do
	:: 	x = 1;
		do 
		:: (y == 1)
		:: (y != 1) -> break;
		od; 
		mutex++;
		// critical section 
		mutex--;
		x = 0;
	od;
}

proctype Y() {
	do
	:: 	y = 1;
		do 
		:: (x == 1)
		:: (x != 1) -> break;
		od;
		mutex++;
		// critical section 
		mutex--;
		y = 0; 
	od;
}

proctype mutex_p() { assert(mutex < 2); } // mutex property 

init { run X(); run Y(); run mutex_p(); }

ltl progress_p { <>(mutex > 0) } // progress property