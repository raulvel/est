x=A2*x+B2*u;
y=C*x;
u=-K*x;
ah=A*xh+B*u+L*(y-C*xh);
C=x-xh;

p=[-2 -1 -3 -4];
K=place(A,B',p);
L=place(A,C,p)';