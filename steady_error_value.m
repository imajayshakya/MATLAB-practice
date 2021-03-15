%Determine the steady state error of the system given in Fig. 4.10 for
%unit step, ramp and parabolic reference signals.
%The system contains one integrator, therefore its type number is 1. On the basis
%of the table above the steady error is
%for step reference signal: e(1) ¼ 0
%for ramp reference signal: e(1) ¼ 1=K ¼ 1=ð2  2=10Þ ¼ 2:5
%   for parabolic reference signal: e(1) ¼ 1
s = zpk('s');
C = 2*(1 + 10*s)/(10*s)
P = 2/(s + 1)^2/(10*s + 1)
L = minreal(C*P)
T = L/(1 + L); T = minreal(T)
t = 0:0.1:20;
r = t;
y = lsim(T,r,t);
plot(t,r,t,y); grid on