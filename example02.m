res = 0.01; Mlimit = 5;
x = -3:res:1;
y = -2:res:2;
Mm = zeros(length(y),length(x));
for kx = 1:length(x)
    for ky = 1:length(y)
        L = x(kx) + y(ky)*1i;
        T = L/(1 + L);
        M = abs(T);
        if M > Mlimit , M = Mlimit;
        end
        Mm(ky,kx) = M;
    end
end
surf(x,y, Mm), shading INTERP, colormap('jet'), view(0,90)