s=tf('s');
P = 1/((10*s + 1)*(1 + s))
C = 0.5*(0.5*s + 1)/s
F = 1/(1 + s)
L = minreal(C*P);
N = 1+L;
HYR = F*L/N;HYR = minreal(HYR)
HUR = F*C/N;HUR = minreal(HUR)
HYYz = -L/N;HYYz = minreal(HYYz)
HUYz = -C/N;HUYz = minreal(HUYz)
HYYni = P/N;HYYni = minreal(HYYni)
HUYni = 1/N;HUYni = minreal(HUYni)
H = [HYR,HYYz,HYYni;HUR,HUYz,HUYni];

t = 0:0.1:10;
figure (1),step(H,t),grid on
figure (2),bode(H),grid on