10 INPUT "Insira a temperatura em Celsius: "; C$
20 LET K = val(C$) + 273
30 LET aux$ = val(C$)*1.8
40 LET F = val(aux$) + 32

50 PRINT "Temperatura em Celsius: " + C$
60 PRINT "Temperatura em Kelvin: " + K
70 PRINT "Temperatura em Fahrenheit: " + F

80 end