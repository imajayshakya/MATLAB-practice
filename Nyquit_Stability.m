s=zpk('s');
L=10/((1+10*s)*(1+s))
[z,p,k]=zpkdata(L,'v')
nyquist(L),grid on