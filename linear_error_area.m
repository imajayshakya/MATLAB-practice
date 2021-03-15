%The transfer function of the closed-loop is
%Determine the linear error area from its step response
s=tf('s');
T = 1/((10*s + 1)*(s + 1))
Ts = 0.5;       %sampling time Ts
t = 0:Ts:60;
y = step(T,t);
plot(t,y,'.');grid on
I1k = sum((1-y)*Ts)
I2k = sum((1-y).*(1-y)*Ts)