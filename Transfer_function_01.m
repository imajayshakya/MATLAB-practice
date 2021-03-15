%just a practice 
%Use MATLAB to find G1*G2
s= tf('s');
G1 = 1/(s+1)
G2 = (s+1)/(s+2)
YR = G1*G2
YR_simple = minreal(YR)