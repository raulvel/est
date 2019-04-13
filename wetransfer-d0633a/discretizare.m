
N=100;
Ts=0.01;
xn=0;
Ad=eye(4)+Ts*A2;
Bd=Ts*B2;
p=[-2 -1 -3 -4];

Kd=place(Ad,Bd',p);
uk=-Kd*x;
xk=Ad*xk+Ts*uk;
yk=C*xk;



for k=1:N
    xn=(xn+x)/Ts;
    y=;
    xh=;