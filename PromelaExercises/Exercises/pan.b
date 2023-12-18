	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM redStrictlyBeforeWalk */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 9: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM pedestrianCanCross */
;
		;
		;
		;
		
	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safePedestrian */
;
		;
		;
		;
		
	case 15: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM initialState_INIT */
;
		;
		;
		;
		
	case 18: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Ped */

	case 19: // STATE 1
		;
		XX = 1;
		unrecv(now.pedchan, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 20: // STATE 2
		;
		now.push = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 4
		;
		now.push = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 5
		;
		_m = unsend(now.plchan);
		;
		goto R999;

	case 24: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC VL */

	case 25: // STATE 1
		;
		XX = 1;
		unrecv(now.vlchan, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 26: // STATE 2
		;
		((P1 *)_this)->red = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 3
		;
		_m = unsend(now.plchan);
		;
		goto R999;

	case 28: // STATE 4
		;
		XX = 1;
		unrecv(now.vlchan, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 29: // STATE 5
		;
		((P1 *)_this)->red = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 31: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PL */

	case 32: // STATE 1
		;
		XX = 1;
		unrecv(now.plchan, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 33: // STATE 2
		;
		_m = unsend(now.vlchan);
		;
		goto R999;

	case 34: // STATE 3
		;
		XX = 1;
		unrecv(now.plchan, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 35: // STATE 4
		;
		((P0 *)_this)->walk = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 5
		;
		_m = unsend(now.pedchan);
		;
		goto R999;
;
		;
		
	case 38: // STATE 7
		;
		((P0 *)_this)->walk = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 8
		;
		_m = unsend(now.vlchan);
		;
		goto R999;

	case 40: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;
	}

