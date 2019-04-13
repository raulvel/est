function [out] = controller(in)
u=in(1);
xd=in(2);
phid=in(3);
x=in(4);
phi=in(5);

A2 =[         0         0    1.0000         0
         0         0   10.0000         0
         0         0         0    1.0000
         0    5.0031         0         0];
     B2=[0;-1;0;0];
out=A2*in(2:5)+B2*in(1);