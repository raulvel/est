%% start script
%initail data
mt=2;
mp=0.85;
g=9.81;
l=0.6;
f=10;

%% liniarizing around 0
x = 0;
phi = 0;
xd = 0;
phid = 0;
xdd = 0;
phidd = 0;

a11=0;
a12=(-mp)*l*phidd*sin(phi)-mp*l*phid^2*cos(phi);
a13=f;
a14=(-2)*phid*mp*l*sin(phi);
b1=-1;

a21=0;
a22=mp*g*l*cos(phi) - mp*l*sin(phi)*xdd;
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

A = [a31 a32 a33 a34;
     a11 a12 a13 a14;
     a41 a42 a43 a44;
     a21 a22 a23 a24];
B = [0 b1 0 b2];