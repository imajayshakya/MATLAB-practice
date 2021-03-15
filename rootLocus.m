%Draw the root-locus of a system given by the open-loop transfer function
s=zpk('s');
L=1/((1+10*s)*(1+5*s)*(1+s)*(1+0.5*s))
rlocus(L)
rlocfind(L)
K=ans
t=0:0.01:40;
step(K*L/(1+K*L),t)