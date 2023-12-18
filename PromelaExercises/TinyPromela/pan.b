	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Receiver */

	case 7: // STATE 1
		;
		XX = 1;
		unrecv(now.s2r, XX-1, 0, ((int)((P1 *)_this)->received), 1);
		((P1 *)_this)->received = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
			case 10: // STATE 7
		sv_restor();
		goto R999;
;
		;
			case 12: // STATE 11
		sv_restor();
		goto R999;
;
		;
		
	case 14: // STATE 20
		;
		_m = unsend(now.r2s);
		;
		goto R999;

	case 15: // STATE 21
		;
		_m = unsend(now.r2s);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		
	case 20: // STATE 26
		;
	/* 0 */	((P1 *)_this)->received = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.s2r, XX-1, 0, ((int)((P1 *)_this)->received), 1);
		((P1 *)_this)->received = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 22: // STATE 32
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Sender */

	case 23: // STATE 1
		;
		_m = unsend(now.s2r);
		;
		goto R999;

	case 24: // STATE 2
		;
		XX = 1;
		unrecv(now.r2s, XX-1, 0, 1, 1);
		;
		;
		goto R999;
	case 25: // STATE 6
		sv_restor();
		goto R999;

	case 26: // STATE 10
		;
		XX = 1;
		unrecv(now.r2s, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 27: // STATE 15
		;
		now.finished[ Index(((P0 *)_this)->id, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;
	}

