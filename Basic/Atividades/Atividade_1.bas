10 INPUT "Digite a primeira nota: "; NP1$
20 INPUT "Digite a segunda nota: "; NP2$
100 LET NPL$ = (val(NP1$) + val(NP2$))
30 LET MEDIA = val(NPL$) / 2


40 IF MEDIA >= 60 THEN GOTO 500
50 IF MEDIA < 30 THEN GOTO 600


60 INPUT "Digite a NP3"; NP3$
110 NPF = val(MEDIA$) + val(NP3$)
70 MEDIANP3 = (VAL(NPL)) / 2
80 IF MEDIANP3 >= 50 THEN GOTO 700
90 GOTO 800

500 PRINT "Aprovado direto"
510 END

600 PRINT "Reprovado direto"
610 END

700 PRINT "Aprovado"
710 END

800 PRINT "Reprovado"
810 END