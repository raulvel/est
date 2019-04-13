function out = l_model(in)

u=in(1);
xd=in(4);
phid=in(5);
x=in(2);
phi=in(3);

m=[x phi xd phid];

A = [0         0    1.0000         0;
     0         0   10.0000         0;
     0         0         0    1.0000;
     0    5.0031         0         0];

B = [0    -1     0     0];

out=A*m'+B'*u;
end

