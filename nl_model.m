function out = nl_model(in)
u=in(1);
xd=in(4);
phid=in(5);
x=in(2);
phi=in(3);

mt=2;
mp=0.85;
g=9.81;
l=0.6;
f=10;

M=[mt+mp            mp*l*cos(phi);
   mp*l*cos(phi)    mp*l^2];

V=[mp*l*phid^2*sin(phi)-f*xd+u;
   -mp*g*l*sin(phi)];

out=inv(M)*V;
out=[xd;phid;out];
end