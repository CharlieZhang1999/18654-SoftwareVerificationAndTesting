// The Promela model for "Hello World” 

active proctype Hello() {
	printf("Hello, my pid is: %d\n", _pid);
}

init {
	int lastpid;
	printf("***** init process, my pid is: %d\n", _pid);
	lastpid = run Hello();
	printf("***** last pid was: %d\n", lastpid);
}