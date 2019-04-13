function out = simuli(in)
u=in(1);
xd=in(2);
phid=in(3);
x=in(4);
phi=in(5);


mt=2;
mp=0.85;
g=9.81;
l=0.6;
f=10;

M=[mt+mp mp*l*cos(phi);
    mp*l*cos(phi) mp*l^2];

V=[mp*l*phid^2*sin(phi)-f*xd+u;
    mp*g*l*sin(phi)];

out=inv(M)*V

end