num=[1, 5];
den=[1, -3, 4, 10, 5, -10];
T=tf(num,den)
step(T)
%poles=roots(den)       %or below command
[zeros,poles,KonstGain]=zpkdata(T,'v')
%both the zeros and poles in graphical mode:pzmap(T)
figure
pzmap(T)