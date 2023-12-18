	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM alwaysDifferentColors */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM notPossiblyAllBallsAreDropped_FAIL */
;
		;
		
	case 6: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM notEventuallyAlwaysGameOn_FAIL */
;
		;
		;
		;
		
	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM alwaysEventuallyTwoBalls */
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
		;
		;
		;
		;
		
	case 18: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM alwaysAtMostTwoBalls */
;
		
	case 19: // STATE 1
		goto R999;

	case 20: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM alwaysEventuallyGameOn */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 24: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 25: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 26: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 27: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Player */
	case 28: // STATE 3
		sv_restor();
		goto R999;
	case 29: // STATE 7
		sv_restor();
		goto R999;
	case 30: // STATE 11
		sv_restor();
		goto R999;

	case 31: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Referee */

	case 32: // STATE 1
		;
		_m = unsend(now.ptoP[0]);
		;
		goto R999;

	case 33: // STATE 2
		;
		_m = unsend(now.ptoP[0]);
		;
		goto R999;

	case 34: // STATE 3
		;
		((P0 *)_this)->color = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 4
		;
		XX = 1;
		unrecv(now.ground, XX-1, 0, ((int)((P0 *)_this)->color), 1);
		((P0 *)_this)->color = trpt->bup.oval;
		;
		;
		goto R999;

	case 36: // STATE 5
		;
		_m = unsend(now.ptoP[0]);
		;
		goto R999;

	case 37: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;
	}

