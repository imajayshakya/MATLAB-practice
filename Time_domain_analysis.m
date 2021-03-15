%Time Domain Analysis
s= tf('s');
H=2/(s^2+2*s+4)
t=0:0.1:10;
step(H);
[y,t,x]=step(H);
%Let us remark that when using the LTI sys structure the order of the output
%parameters differ from the order when using the (num, den) polynomial form:
[y,x,t]=step(num,den);
%Impulse response: The impulse response is the response of the system to a DIRAC
%delta input
impulse(H);
yi=impulse(H,t);
plot(t,yi)
H=ss(H)
x0=[1, -2]
[y,t,x]=initial(H,x0);
plot(t,y),grid on
size(x)
x1=x(:,1); x2=x(:,2);
plot(x1,x2)
usin=2*sin(3*t);
plot(t,usin,'r',t,ysin,'b'), grid;
ysin=lsim(H,usin,t);