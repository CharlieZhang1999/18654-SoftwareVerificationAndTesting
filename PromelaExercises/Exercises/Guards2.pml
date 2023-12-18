int x = 0;

active proctype Aap()
{
	int y = 1;
	skip;
	x = 2;
	(x > 2 && y == 1) ->
	skip;
}

active proctype Bbp()
{
	timeout;
	x = 3;
	skip;
}

