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

		 /* CLAIM redStrictlyBeforeWalk */
	case 3: // STATE 1 - _spin_nvr.tmp:33 - [((!(!(!(PL.walk)))&&!((VL.red&&!(PL.walk)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))&& !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:34 - [(((!(!(!(PL.walk)))&&!(!(PL.walk)))&&!((VL.red&&!(PL.walk)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][3] = 1;
		if (!((( !( !( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))&& !( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))&& !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - _spin_nvr.tmp:34 - [assert(!(((!(!(!(PL.walk)))&&!(!(PL.walk)))&&!((VL.red&&!(PL.walk))))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][4] = 1;
		spin_assert( !((( !( !( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))&& !( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))&& !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))), " !((( !( !( !(PL.walk)))&& !( !(PL.walk)))&& !((VL.red&& !(PL.walk)))))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 9 - _spin_nvr.tmp:39 - [(!((VL.red&&!(PL.walk))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][9] = 1;
		if (!( !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 11 - _spin_nvr.tmp:40 - [((!(!(PL.walk))&&!((VL.red&&!(PL.walk)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][11] = 1;
		if (!(( !( !(((int)((P0 *)Pptr(f_pid(0)))->walk)))&& !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 12 - _spin_nvr.tmp:40 - [assert(!((!(!(PL.walk))&&!((VL.red&&!(PL.walk))))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][12] = 1;
		spin_assert( !(( !( !(((int)((P0 *)Pptr(f_pid(0)))->walk)))&& !((((int)((P1 *)Pptr(f_pid(1)))->red)&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))), " !(( !( !(PL.walk))&& !((VL.red&& !(PL.walk)))))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 18 - _spin_nvr.tmp:44 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM pedestrianCanCross */
	case 10: // STATE 1 - _spin_nvr.tmp:21 - [((!(!(push))&&!(PL.walk)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !(((int)now.push)))&& !(((int)((P0 *)Pptr(f_pid(0)))->walk)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - _spin_nvr.tmp:26 - [(!(PL.walk))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !(((int)((P0 *)Pptr(f_pid(0)))->walk))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safePedestrian */
	case 13: // STATE 1 - _spin_nvr.tmp:12 - [(!((!(PL.walk)||VL.red)))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(( !(((int)((P0 *)Pptr(f_pid(0)))->walk))||((int)((P1 *)Pptr(f_pid(1)))->red)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - _spin_nvr.tmp:12 - [assert(!(!((!(PL.walk)||VL.red))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][2] = 1;
		spin_assert( !( !(( !(((int)((P0 *)Pptr(f_pid(0)))->walk))||((int)((P1 *)Pptr(f_pid(1)))->red)))), " !( !(( !(PL.walk)||VL.red)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM initialState_INIT */
	case 16: // STATE 1 - _spin_nvr.tmp:4 - [(!(((!(PL.walk)&&VL.red)&&!(push))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((( !(((int)((P0 *)Pptr(f_pid(0)))->walk))&&((int)((P1 *)Pptr(f_pid(1)))->red))&& !(((int)now.push))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 2 - _spin_nvr.tmp:4 - [assert(!(!(((!(PL.walk)&&VL.red)&&!(push)))))] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported2 = 0;
			if (verbose && !reported2)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported2 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][2] = 1;
		spin_assert( !( !((( !(((int)((P0 *)Pptr(f_pid(0)))->walk))&&((int)((P1 *)Pptr(f_pid(1)))->red))&& !(((int)now.push))))), " !( !((( !(PL.walk)&&VL.red)&& !(push))))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 0)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Ped */
	case 19: // STATE 1 - finalpractice.pml:43 - [pedchan?CANWALK] (0:0:0 - 0)
		reached[2][1] = 1;
		if (q_len(now.pedchan) == 0) continue;

		XX=1;
		if (2 != qrecv(now.pedchan, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.pedchan-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.pedchan, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.pedchan);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 20: // STATE 2 - finalpractice.pml:44 - [push = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.push);
		now.push = 0;
#ifdef VAR_RANGES
		logval("push", ((int)now.push));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 3 - finalpractice.pml:45 - [((len(pedchan)==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((q_len(now.pedchan)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 4 - finalpractice.pml:46 - [push = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.push);
		now.push = 1;
#ifdef VAR_RANGES
		logval("push", ((int)now.push));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 5 - finalpractice.pml:47 - [plchan!RB] (0:0:0 - 0)
		IfNotBlocked
		reached[2][5] = 1;
		if (q_full(now.plchan))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plchan);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plchan, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 9 - finalpractice.pml:49 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC VL */
	case 25: // STATE 1 - finalpractice.pml:32 - [vlchan?REDLIGHT] (0:0:0 - 0)
		reached[1][1] = 1;
		if (q_len(now.vlchan) == 0) continue;

		XX=1;
		if (3 != qrecv(now.vlchan, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.vlchan-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.vlchan, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.vlchan);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 26: // STATE 2 - finalpractice.pml:33 - [red = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->red);
		((P1 *)_this)->red = 1;
#ifdef VAR_RANGES
		logval("VL:red", ((int)((P1 *)_this)->red));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 3 - finalpractice.pml:34 - [plchan!CANWALK] (0:0:0 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.plchan))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plchan);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plchan, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 4 - finalpractice.pml:35 - [vlchan?GREENLIGHT] (0:0:0 - 0)
		reached[1][4] = 1;
		if (q_len(now.vlchan) == 0) continue;

		XX=1;
		if (4 != qrecv(now.vlchan, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.vlchan-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.vlchan, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.vlchan);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 29: // STATE 5 - finalpractice.pml:36 - [red = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->red);
		((P1 *)_this)->red = 0;
#ifdef VAR_RANGES
		logval("VL:red", ((int)((P1 *)_this)->red));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 6 - finalpractice.pml:37 - [((len(vlchan)==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		if (!((q_len(now.vlchan)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 11 - finalpractice.pml:39 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PL */
	case 32: // STATE 1 - finalpractice.pml:19 - [plchan?RB] (0:0:0 - 0)
		reached[0][1] = 1;
		if (q_len(now.plchan) == 0) continue;

		XX=1;
		if (5 != qrecv(now.plchan, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.plchan-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.plchan, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plchan);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 2 - finalpractice.pml:20 - [vlchan!REDLIGHT] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.vlchan))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.vlchan);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.vlchan, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 3 - finalpractice.pml:21 - [plchan?CANWALK] (0:0:0 - 0)
		reached[0][3] = 1;
		if (q_len(now.plchan) == 0) continue;

		XX=1;
		if (2 != qrecv(now.plchan, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.plchan-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.plchan, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plchan);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 35: // STATE 4 - finalpractice.pml:22 - [walk = 1] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->walk);
		((P0 *)_this)->walk = 1;
#ifdef VAR_RANGES
		logval("PL:walk", ((int)((P0 *)_this)->walk));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 5 - finalpractice.pml:23 - [pedchan!CANWALK] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.pedchan))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.pedchan);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.pedchan, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 6 - finalpractice.pml:25 - [((len(plchan)==0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((q_len(now.plchan)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 7 - finalpractice.pml:25 - [walk = 0] (0:0:1 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->walk);
		((P0 *)_this)->walk = 0;
#ifdef VAR_RANGES
		logval("PL:walk", ((int)((P0 *)_this)->walk));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 8 - finalpractice.pml:25 - [vlchan!GREENLIGHT] (0:0:0 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (q_full(now.vlchan))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.vlchan);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.vlchan, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 12 - finalpractice.pml:27 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][12] = 1;
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

