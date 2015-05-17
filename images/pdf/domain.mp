u:=3cm;

% problem definition
beginfig(1);
pair p[];
p0 = (0u, 0u);
p1 = (2u, 0u);
p2 = (2u, 2u);
p3 = (0u, 2u);
p4 = (1u, 0u);
p5 = (0u, 0.5u);
p6 = (0.25u, 2u);
p7 = (u, u);
p8 = (0.25u, 1.75u);
p9 = (1.25u, 0.5u); 

draw p0--p1--p2--p3--cycle withcolor black withpen pencircle scaled 1.5;
draw p4--p2 withcolor blue withpen pencircle scaled 1.5;
draw p5--p6 withcolor red withpen pencircle scaled 1.5;

picture X;
X := thelabel.bot(btex $E_0\Delta^2 u_0=f$ etex scaled 1.0, p7);
draw X withcolor black;

picture Xa;
Xa := thelabel.urt(btex $\Omega$ etex scaled 1.0, p0);
draw Xa withcolor black;

picture XX;
XX := thelabel.rt(btex $E_1\Delta_1 u_1=0$ etex scaled 1.0, p8);
draw XX withcolor red;

picture XXa;
XXa := thelabel.lrt(btex $\Gamma_1$ etex scaled 1.0, p5);
draw XXa withcolor red;

picture XXX;
XXX := thelabel.rt(btex $E_2\Delta_1 u_2=0$ etex scaled 1.0, p9);
draw XXX withcolor blue;

picture XXXb;
XXXb := thelabel(btex $\Gamma_2$ etex scaled 1.0, p4 shifted (0.2u, 0.1u));
draw XXXb withcolor blue;

endfig;

% eigv
beginfig(2)
pair p[];
p0 = (-u, -u);
p1 = (u, -u);
p2 = (u, u);
p3 = (-u, u);
p4 = (0, -u);
p5 = (u, 0);
% 
pair l[];
l0 = (0, 0);
l1 = 0.25[p4, p5];
% 
draw p0--p1--p2--p3--cycle withcolor black withpen pencircle scaled 1.5;
picture X;
X := thelabel.bot(btex $\Delta^2 u_0=f$ etex scaled 1.0, l0);
draw X withcolor black;

draw p4--p5 withcolor blue withpen pencircle scaled 1.5;
picture XX;
XX := thelabel.rt(btex $\Delta_1 u_1=0$ etex scaled 1.0, l1);
draw XX withcolor blue;
endfig;


% eigv
beginfig(3)
pair p[];
p0 = (-u, -u);
p1 = (u, -u);
p2 = (u, u);
p3 = (-u, u);
p4 = (u, 0u);
p5 = (-2*u/3, -1u);
p6 = (2*u/3, 1u);
p7 = (u, 2*u/3);
% 
pair l[];
l0 = (0, 0);
l1 = 0.5[p4, p5];
l2 = 0.5[p6, p7];
% 
draw p0--p1--p2--p3--cycle withcolor black withpen pencircle scaled 1.5;
picture X;
X := thelabel.bot(btex $\Delta^2 u_0=f$ etex scaled 1.0, l0);
draw X withcolor black;

draw p4--p5 withcolor blue withpen pencircle scaled 1.5;
picture XX;
XX := thelabel.lrt(btex $100\Delta_1 u_1=0$ etex scaled 1.0, l1);
draw XX withcolor blue;

draw p6--p7 withcolor red withpen pencircle scaled 1.5;
picture XXX;
XXX := thelabel.llft(btex $10\Delta_1 u_2=0$ etex scaled 1.0, l2);
draw XXX withcolor red;

endfig;



end;
