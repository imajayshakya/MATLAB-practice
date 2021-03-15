x = linspace(-5*pi,5*pi,500);
plot(x,x,'b',x,-x,'b',x,sin(x),'g','LineWidth',2);
plot(x,(x*sin(x)),'r','LineWidth',3);
