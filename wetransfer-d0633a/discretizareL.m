function [out] = discretizareL(in)
u=in(1);
x=in(2);
phi=in(3);
xd=in(4);
phid=in(5);


% u=in(1);
% xd=in(2);
% phid=in(3);
% x=in(4);
% phi=in(5);

A2 =[         0         0    1.0000         0
         0         0   10.0000         0
         0         0         0    1.0000
         0    5.0031         0         0];
     B2=[0;+1;0;0];

Ts=0.1;
Ad=eye(4)+Ts*A2;
Bd=Ts*B2;
p=[-2 -1 -3 -4]*.1;



Kd=place(Ad,Bd,p)
% u=-Kd*x;
% x=Ad*x+Ts*u;
 % y=C*x;

   
  

out=Ad*in(2:5)+Bd*in(1);
end
