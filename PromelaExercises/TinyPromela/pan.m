#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - Model8.pml:63 - [(run Sender(0,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - Model8.pml:64 - [(run Sender(1,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 0, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - Model8.pml:65 - [(run Receiver())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - Model8.pml:66 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Receiver */
	case 7: // STATE 1 - Model8.pml:29 - [s2r?received] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_len(now.s2r) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->received);
		;
		((P1 *)_this)->received = qrecv(now.s2r, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Receiver:received", ((int)((P1 *)_this)->received));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.s2r);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->received)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 8: // STATE 2 - Model8.pml:31 - [((bitSent>=10))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.bitSent>=10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - Model8.pml:32 - [(((received==0)&&(lastReceived!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(((((int)((P1 *)_this)->received)==0)&&(now.lastReceived!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 7 - Model8.pml:33 - [D_STEP33]
		IfNotBlocked

		reached[1][7] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_020_0: /* 2 */
		now.count[0] = (now.count[0]+1);
#ifdef VAR_RANGES
		logval("count[0]", now.count[0]);
#endif
		;
S_021_0: /* 2 */
		now.lastReceived = ((int)((P1 *)_this)->received);
#ifdef VAR_RANGES
		logval("lastReceived", now.lastReceived);
#endif
		;
		goto S_030_0;
S_030_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 11: // STATE 8 - Model8.pml:38 - [(((received==1)&&(lastReceived!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(((((int)((P1 *)_this)->received)==1)&&(now.lastReceived!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - Model8.pml:39 - [D_STEP39]
		IfNotBlocked

		reached[1][11] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_024_0: /* 2 */
		now.count[1] = (now.count[1]+1);
#ifdef VAR_RANGES
		logval("count[1]", now.count[1]);
#endif
		;
S_025_0: /* 2 */
		now.lastReceived = ((int)((P1 *)_this)->received);
#ifdef VAR_RANGES
		logval("lastReceived", now.lastReceived);
#endif
		;
		goto S_030_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 13: // STATE 16 - Model8.pml:45 - [assert((((count[0]-count[1])<=1)&&((count[1]-count[0])<=1)))] (0:0:0 - 3)
		IfNotBlocked
		reached[1][16] = 1;
		spin_assert((((now.count[0]-now.count[1])<=1)&&((now.count[1]-now.count[0])<=1)), "(((count[0]-count[1])<=1)&&((count[1]-count[0])<=1))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 20 - Model8.pml:48 - [r2s!ERR] (0:0:0 - 5)
		IfNotBlocked
		reached[1][20] = 1;
		if (q_full(now.r2s))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.r2s);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.r2s, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 21 - Model8.pml:49 - [r2s!ERR] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (q_full(now.r2s))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.r2s);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.r2s, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 22 - Model8.pml:50 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 17: // STATE 23 - Model8.pml:51 - [assert(finished[0])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		spin_assert(((int)now.finished[0]), "finished[0]", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 24 - Model8.pml:52 - [assert(finished[1])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		spin_assert(((int)now.finished[1]), "finished[1]", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 25 - Model8.pml:56 - [((len(s2r)>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((q_len(now.s2r)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 26 - Model8.pml:56 - [s2r?received] (0:0:2 - 1)
		reached[1][26] = 1;
		if (q_len(now.s2r) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->received);
		;
		((P1 *)_this)->received = qrecv(now.s2r, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Receiver:received", ((int)((P1 *)_this)->received));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.s2r);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->received)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: received */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->received;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->received = 0;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 27 - Model8.pml:57 - [((len(s2r)==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((q_len(now.s2r)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 32 - Model8.pml:60 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][32] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Sender */
	case 23: // STATE 1 - Model8.pml:13 - [s2r!seq_out] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.s2r))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.s2r);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->seq_out)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.s2r, 0, ((int)((P0 *)_this)->seq_out), 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 2 - Model8.pml:15 - [r2s?ERR] (0:0:0 - 1)
		reached[0][2] = 1;
		if (q_len(now.r2s) == 0) continue;

		XX=1;
		if (1 != qrecv(now.r2s, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.r2s-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.r2s, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.r2s);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 6 - Model8.pml:16 - [D_STEP16]
		IfNotBlocked

		reached[0][6] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_003_0: /* 2 */
		((P0 *)_this)->seq_out = (1-((int)((P0 *)_this)->seq_out));
#ifdef VAR_RANGES
		logval("Sender:seq_out", ((int)((P0 *)_this)->seq_out));
#endif
		;
S_004_0: /* 2 */
		now.bitSent = (now.bitSent+1);
#ifdef VAR_RANGES
		logval("bitSent", now.bitSent);
#endif
		;
		goto S_006_0;
S_006_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 26: // STATE 10 - Model8.pml:18 - [r2s?ERR] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_len(now.r2s) == 0) continue;

		XX=1;
		if (1 != qrecv(now.r2s, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.r2s-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.r2s, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.r2s);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 27: // STATE 15 - Model8.pml:20 - [finished[id] = 1] (0:0:1 - 5)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.finished[ Index(((int)((P0 *)_this)->id), 2) ]);
		now.finished[ Index(((P0 *)_this)->id, 2) ] = 1;
#ifdef VAR_RANGES
		logval("finished[Sender:id]", ((int)now.finished[ Index(((int)((P0 *)_this)->id), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 16 - Model8.pml:21 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

