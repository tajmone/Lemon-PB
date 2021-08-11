; Test that all the Arrays in yyTables

Debug "******************************"
Debug "TEST: Check Arrays in yyTables"
Debug "******************************"

Procedure dbgArrTable(cnt.i, arrName.s, val.i, expected.i)
  arrTxt$ = "*yy\"+ arrName +"["+ Str(cnt) +"] "
  If Len(Str(cnt)) = 1
    arrTxt$ + " "
  EndIf
  arrTxt$ + "= "
  dbg$ = RSet(Str(cnt)+". ", 5)
  dbg$+ arrTxt$ + RSet(Str(val), 2)

  If val = expected
    dbg$+ " OK!"
  Else
    dbg$+ " *ERR* -> expected: "+ Str(expected)
  EndIf

  Debug dbg$
EndProcedure

Restore yyArrTableData

;- Iterate yy_action
Debug LSet("", 40, "-")
For i=0 To #YY_ACTTAB_COUNT-1
  Read.YYACTIONTYPE exp
  dbgArrTable(i, "action", *yy\action[i], exp)
Next

;- Iterate yy_lookahead
Debug LSet("", 40, "-")
For i=0 To #YY_LOOKAHEADTAB_COUNT-1
  Read.YYCODETYPE exp
  dbgArrTable(i, "lookahead", *yy\lookahead[i], exp)
Next

;- Iterate yy_reduce_ofst
Debug LSet("", 40, "-")
For i=0 To #YY_REDOFSTTAB_COUNT-1
  Read.b exp
  dbgArrTable(i, "reduce_ofst", *yy\reduce_ofst[i], exp)
Next

;- Iterate yy_default
Debug LSet("", 40, "-")
For i=0 To #YY_DEFAULTTAB_COUNT-1
  Read.YYACTIONTYPE exp
  dbgArrTable(i, "default", *yy\default[i], exp)
Next

;- Iterate yy_shift_ofst
Debug LSet("", 40, "-")
For i=0 To #YY_SHIFTOFSTTAB_COUNT-1
  Read.a exp
  dbgArrTable(i, "shift_ofst", *yy\shift_ofst[i], exp)
Next
