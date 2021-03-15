L=(1-s)/((1+s)*(1+0.5*s))
[z,p,k]=zpkdata(L,'v')
%K=1
nyquist(L); grid on 
figure
%k=-1
nyquist(-L), grid on