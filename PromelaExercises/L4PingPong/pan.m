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

		 /* CLAIM alwaysDifferentColors */
	case 3: // STATE 1 - _spin_nvr.tmp:68 - [(!((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1))||((getBallsWithPlayer[0]<=1)&&(getBallsWithPlayer[1]<=1)))))] (6:0:0 - 1)
		
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
		reached[8][1] = 1;
		if (!( !(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))||((((int)now.getBallsWithPlayer[0])<=1)&&(((int)now.getBallsWithPlayer[1])<=1))))))
			continue;
		/* merge: assert(!(!((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1))||((getBallsWithPlayer[0]<=1)&&(getBallsWithPlayer[1]<=1))))))(0, 2, 6) */
		reached[8][2] = 1;
		spin_assert( !( !(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))||((((int)now.getBallsWithPlayer[0])<=1)&&(((int)now.getBallsWithPlayer[1])<=1))))), " !( !(( !(((((q_len(ptoP[0])+q_len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1))||((getBallsWithPlayer[0]<=1)&&(getBallsWithPlayer[1]<=1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[8][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:73 - [-end-] (0:0:0 - 1)
		
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
		reached[8][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM notPossiblyAllBallsAreDropped_FAIL */
	case 5: // STATE 1 - _spin_nvr.tmp:57 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
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
		reached[7][1] = 1;
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 13 - _spin_nvr.tmp:64 - [-end-] (0:0:0 - 1)
		
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
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM notEventuallyAlwaysGameOn_FAIL */
	case 7: // STATE 1 - _spin_nvr.tmp:46 - [(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))] (0:0:0 - 1)
		
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
		if (!(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:51 - [(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))] (0:0:0 - 1)
		
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
		reached[6][8] = 1;
		if (!(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:53 - [-end-] (0:0:0 - 1)
		
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
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM alwaysEventuallyTwoBalls */
	case 10: // STATE 1 - _spin_nvr.tmp:23 - [((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))&&((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
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
		if (!(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))&&((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - _spin_nvr.tmp:24 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2)))] (0:0:0 - 1)
		
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
		reached[5][3] = 1;
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - _spin_nvr.tmp:25 - [(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][5] = 1;
		if (!(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 12 - _spin_nvr.tmp:30 - [((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))&&((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
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
		reached[5][12] = 1;
		if (!(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))&&((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 17 - _spin_nvr.tmp:34 - [((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))&&((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][17] = 1;
		if (!(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))&&((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 19 - _spin_nvr.tmp:35 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][19] = 1;
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 24 - _spin_nvr.tmp:39 - [((!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])==2))&&((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][24] = 1;
		if (!(( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))==2))&&((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 26 - _spin_nvr.tmp:40 - [(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][26] = 1;
		if (!(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 31 - _spin_nvr.tmp:42 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM alwaysAtMostTwoBalls */
	case 19: // STATE 1 - _spin_nvr.tmp:14 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])<=2)))] (6:0:0 - 1)
		
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
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))<=2))))
			continue;
		/* merge: assert(!(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])<=2))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))<=2))), " !( !(((((q_len(ptoP[0])+q_len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])<=2)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 10 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM alwaysEventuallyGameOn */
	case 21: // STATE 1 - _spin_nvr.tmp:3 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
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
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:8 - [(!(((((len(ptoP[0])+len(ptoP[1]))+getBallsWithPlayer[0])+getBallsWithPlayer[1])>=1)))] (0:0:0 - 1)
		
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
		if (!( !(((((q_len(now.ptoP[0])+q_len(now.ptoP[1]))+((int)now.getBallsWithPlayer[0]))+((int)now.getBallsWithPlayer[1]))>=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 24: // STATE 1 - JugglersBW.pml:59 - [(run Referee())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - JugglersBW.pml:60 - [(run Player(0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 3 - JugglersBW.pml:61 - [(run Player(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 4 - JugglersBW.pml:62 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Player */
	case 28: // STATE 3 - JugglersBW.pml:46 - [D_STEP46]
		if (!(((q_len(now.ptoP[ Index(((int)((P1 *)_this)->i), 2) ])))))
			continue;

		reached[1][3] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_009_0: /* 2 */
		if (q_len(now.ptoP[ Index(((int)((P1 *)_this)->i), 2) ]) == 0) Uerror("block in d_step seq");

		XX=1;
		((P1 *)_this)->color = qrecv(now.ptoP[ Index(((int)((P1 *)_this)->i), 2) ], XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Player:color", ((int)((P1 *)_this)->color));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ptoP[ Index(((int)((P1 *)_this)->i), 2) ]);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->color)); strcat(simvals, simtmp);		}
#endif
		;
S_010_0: /* 2 */
		now.getBallsWithPlayer[ Index(((P1 *)_this)->color, 2) ] = (((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ])+1);
#ifdef VAR_RANGES
		logval("getBallsWithPlayer[Player:color]", ((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ]));
#endif
		;
		goto S_020_0;
S_020_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 4; goto P999;

	case 29: // STATE 7 - JugglersBW.pml:51 - [D_STEP51]
		if ((boq != -1) || !(!q_full(now.ptoP[ Index((1-((int)((P1 *)_this)->i)), 2) ])))
			continue;

		reached[1][7] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_013_0: /* 2 */
		if (q_full(now.ptoP[ Index((1-((int)((P1 *)_this)->i)), 2) ]))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ptoP[ Index((1-((int)((P1 *)_this)->i)), 2) ]);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->color)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ptoP[ Index((1-((int)((P1 *)_this)->i)), 2) ], 0, ((int)((P1 *)_this)->color), 1);
S_014_0: /* 2 */
		now.getBallsWithPlayer[ Index(((P1 *)_this)->color, 2) ] = (((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ])-1);
#ifdef VAR_RANGES
		logval("getBallsWithPlayer[Player:color]", ((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ]));
#endif
		;
		goto S_021_0;
S_021_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 2; goto P999;

	case 30: // STATE 11 - JugglersBW.pml:52 - [D_STEP52]
		if ((boq != -1) || !(!q_full(now.ground)))
			continue;

		reached[1][11] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_017_0: /* 2 */
		if (q_full(now.ground))
			Uerror("block in d_step seq");
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ground);
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->color)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ground, 0, ((int)((P1 *)_this)->color), 1);
S_018_0: /* 2 */
		now.getBallsWithPlayer[ Index(((P1 *)_this)->color, 2) ] = (((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ])-1);
#ifdef VAR_RANGES
		logval("getBallsWithPlayer[Player:color]", ((int)now.getBallsWithPlayer[ Index(((int)((P1 *)_this)->color), 2) ]));
#endif
		;
		goto S_021_0; /* ';' */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 2; goto P999;

	case 31: // STATE 17 - JugglersBW.pml:55 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Referee */
	case 32: // STATE 1 - JugglersBW.pml:35 - [ptoP[0]!0] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.ptoP[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ptoP[0]);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ptoP[0], 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 2 - JugglersBW.pml:36 - [ptoP[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.ptoP[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ptoP[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ptoP[0], 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 3 - JugglersBW.pml:38 - [color = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->color);
		((P0 *)_this)->color = 0;
#ifdef VAR_RANGES
		logval("Referee:color", ((int)((P0 *)_this)->color));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 4 - JugglersBW.pml:39 - [ground?color] (0:0:1 - 1)
		reached[0][4] = 1;
		if (q_len(now.ground) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->color);
		;
		((P0 *)_this)->color = qrecv(now.ground, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("Referee:color", ((int)((P0 *)_this)->color));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ground);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->color)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 36: // STATE 5 - JugglersBW.pml:39 - [ptoP[0]!color] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (q_full(now.ptoP[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ptoP[0]);
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->color)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ptoP[0], 0, ((int)((P0 *)_this)->color), 1);
		_m = 2; goto P999; /* 0 */
	case 37: // STATE 9 - JugglersBW.pml:41 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
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

