40 INPUT "Digite a altura em metros: "; H$
50 INPUT "Digite o peso em quilogramas: "; P$

60 LET MULT = VAL(H$) * VAL(H$)
70 LET IMC = VAL(P$) / MULT

90 PRINT "O seu IMC é: " + IMC

110 END