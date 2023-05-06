clc
clear
T = readtable("DAQ_Sensor_Data_ANGT100.TXT");

var2 = T.Var2;
var3 = T.Var3;
var4 = T.Var4;
var5 = T.Var5;
var6 = T.Var6;
var7 = T.Var7;
var8 = T.Var8;
var9 = T.Var9;

std2 = std(var2)
std3 = std(var3)
std4 = std(var4)
std5 = std(var5)
std6 = std(var6)
std7 = std(var7)
std8 = std(var8)
std9 = std(var9)

snr2 = 10*log(mean(var2)/std(var2))
snr3 = 10*log(mean(var3)/std(var3))
snr4 = 10*log(mean(var4)/std(var4))
snr5 = 10*log(mean(var5)/std(var5))
snr6 = 10*log(mean(var6)/std(var6))
snr7 = 10*log(mean(var7)/std(var7))
snr8 = 10*log(mean(var8)/std(var8))
snr9 = 10*log(mean(var9)/std(var9))

enob2 = (snr2 - 1.76)/6.02
enob3 = (snr3 - 1.76)/6.02
enob4 = (snr4 - 1.76)/6.02
enob5 = (snr5 - 1.76)/6.02
enob6 = (snr6 - 1.76)/6.02
enob7 = (snr7 - 1.76)/6.02
enob8 = (snr8 - 1.76)/6.02
enob9 = (snr9 - 1.76)/6.02
