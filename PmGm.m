s=zpk('s');
L=1/((0.5+s)*(s^2+2*s+1))
%Method_1: Use the margin command
%[gm,pm,wg,wc]=margin(L)
%margin(L)
%gain margin Gm is given in decibels
%Gm=20*log10(gm)
%Method_2: use the BODE and NYQUIST diagrams 
%nyquist(L)
%bode(L)

%Method_3: Read from a frequency-amplitude-phase table Store the calculated points in a table then read the margins:
w=logspace(-1,1,100);
[num,den]=tfdata(L,'v')
[mag,phase]=bode(num,den,w);
Tabl=[mag, phase,w']
[mag,phase]=bode(L,w);
Tabl=[mag(:), phase(:), w']
Lk=4.5*L
nyquist(Lk)
Tk=Lk/(1+Lk)
step(Tk)
pzmap(Tk)
