s = zpk('s');
L = 4/((10*s + 1)*(5*s + 1))
T = L/(1 + L);
T = minreal(T)
T = feedback(L,1)
step(L,'b',T,'r'),grid on
ysL = dcgain(L)
ysT = dcgain(T)
esL = 1-ysL
esT = 1-ysT
y = step(T);
ym = max(y)
yt = (ym-ysT)/ysT
figure
bode(L,'b',T,'r'),grid on