phi=0;
phidd=0;
phid=0;
x=1;
xd=0;
xdd=0;

% syms phi phid phidd x xd xdd
% 
% 
mt=2;
mp=0.85;
g=9.81;
l=0.6;
f=10;

q1=mt+mp;
q2=mp*l*cos(phi);
a11=0;
a12=(-mp)*l*phidd*sin(phi)-mp*l*phid^2*cos(phi);
a13=f;
a14=(-2)*phid*mp*l*sin(phi);
b1=1;

q3=mp*l*cos(phi);
q4=mp*l^2;
a21=0;
a22=mp*g*l*cos(phi);
a23=0;
a24=0;
b2=0;

a31=0;
a32=0;
a33=1;
a34=0;
a41=0;
a42=0;
a43=0;
a44=1;
b3=0;
b4=0;

m1=[q1 q2 q3 q4];

m2=[x phi xd phid];

A1=[a31 a32 a33 a34;
    a11 a12 a13 a14;];

A2=[a31 a32 a33 a34;
    a11 a12 a13 a14;
    a41 a42 a43 a44;
    a21 a22 a23 a24];

B1=[b1 b2];

B2=[0 b1 0 b2];

p=[-1 -2 -3 -4];
K=place(A2,B2',p)
% xd=A2*x+B2'*u;
u=-K*x;

Ts=0.01;
Ad=eye(4)+Ts*A2;
Bd=Ts*B2;
p=[-2 -1 -3 -4];



Kd=place(Ad,Bd',p);


