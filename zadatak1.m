% poznate vrednosti
global r2
global r1
global fi1
global rh
global fih
global r4
global r5
global fi6
global fi2

r2=0.16;
r1=0.400;
fi1=90*pi/180;
rh=0.900;
fih=90*pi/180;
r4=0.8;
r5=0.31;
fi6=0;
rh1=0.500;
fih1=90*pi/180;

fi2=110*pi/180;
om2=100*pi/180;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1. KONTURA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  1. KONTURA POLOZAJ
x0 =[0 90*pi/180];
[x,fval] = fsolve(@zadatak1polozaj1,x0) ;

r4a=x(1);
fi4a=x(2);
    % ispis izracunatih velicina na ekran - za proveru
     r4a=x(1)
     fi4as=x(2)*180/pi

%  1. KONTURA BRZINE

A=[cos(fi4a)    r4a*cos(fi4a+pi/2)
     sin(fi4a)    r4a*sin(fi4a+pi/2)];
B=[r2*om2*cos(fi2+pi/2)
   r2*om2*sin(fi2+pi/2)];
y=A\B;

r4at=y(1);
om4a=y(2);

    % ispis izracunatih velicina na ekran - za proveru
     r4at=y(1)
     om4as=y(2)*180/pi
     
%  1. KONTURA UBRZANJA
C=[cos(fi4a)     r4a*cos(fi4a+pi/2)
     sin(fi4a)      r4a*sin(fi4a+pi/2)];
D=[r2*om2^2*cos(fi2+pi)-2*r4at*om4a*cos(fi4a+pi/2)-r4a*om4a^2*cos(fi4a+pi)
     r2*om2^2*sin(fi2+pi)-2*r4at*om4a*sin(fi4a+pi/2)-r4a*om4a^2*sin(fi4a+pi)];
z=C\D;
     
r4att=z(1);
eps4a=z(2);

    % ispis izracunatih velicina na ekran - za proveru
     r4att=z(1)
     eps4as=z(2)*180/pi
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2. KONTURA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  2. KONTURA POLOZAJ

global fi4
%veza izmedju fi4 i fi4a, omega4 i omega4a, epsilon4 i epsilon4a
fi4=fi4a;
om4=om4a;
eps4=eps4a;

xx0 =[0 180*pi/180];
[xx,fval] = fsolve(@zadatak1polozaj2,xx0);

r6=xx(1);
fi5=xx(2);
    % ispis izracunatih velicina na ekran - za proveru
     r6=xx(1)
     fi5s=xx(2)*180/pi

%  2. KONTURA BRZINE
AA=[cos(fi6) -r5*cos(fi5+pi/2)
        sin(fi6)  -r5*sin(fi5+pi/2)];
BB=[r4*om4*cos(fi4+pi/2)
       r4*om4*sin(fi4+pi/2)];
yy=AA\BB;

r6t=yy(1);
om5=yy(2);

    % ispis izracunatih velicina na ekran - za proveru
     r6t=yy(1)
     om5s=yy(2)*180/pi
     
%  2. KONTURA UBRZANJA
CC=[cos(fi6) -r5*cos(fi5+pi/2)
        sin(fi6)  -r5*sin(fi5+pi/2)];
DD=[r4*eps4*cos(fi4+pi/2)+r4*om4^2*cos(fi4+pi)+r5*om5^2*cos(fi5+pi)
        r4*eps4*sin(fi4+pi/2)+r4*om4^2*sin(fi4+pi)+r5*om5^2*sin(fi5+pi)];
zz=CC\DD;
     
r6tt=zz(1);
eps5=zz(2);

    % ispis izracunatih velicina na ekran - za proveru
     r6tt=zz(1)
     eps5s=zz(2)*180/pi     

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3. TACKA C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  TACKA C - POLOZAJ
xc=rh1*cos(fih1)+r6*cos(fi6)
yc=rh1*sin(fih1)+r6*sin(fi6)

%  TACKA C - BRZINA
vxc=r6t*cos(fi6)
vyc=r6t*sin(fi6)

%  TACKA C -  UBRZANJE
axc=r6tt*cos(fi6)
ayc=r6tt*sin(fi6)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f6 = 100;
m6 = 20;

A = [1    0    0    0    0    0
     0    1    1    0    0    0
     0    0    0    1    0    0
     -1   0    0    0    1    0
     0    -1   0    0    0    1
     r5*sin(fi5) -r5*cos(fi5) 0 0 0 0];
b = [-f6;
    0;
    -m6;
    0;
    0;
    0];

x = A\b;
f56x = x(1)
f56y = x(2)
f16  = x(3)
m16  = x(4)
f45x = x(5)
f45  = x(6)



     