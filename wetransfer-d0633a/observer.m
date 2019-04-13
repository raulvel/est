function [out]=observer(in)
u=in(1);

xd=Ad*x+Bd*u;
y=Cd*x;
p=[-2 -1 -3 -4];
L=place(Ad',Cd',p);
xh=Ad*xh+Bd*u+L*(y-Cd*xh);


end