%fi4a = 1.6699;
%r4a = 0.5531;
r2 = 0.16;
fi2t = 100*pi/180;
fi2 = degtorad(110);

%%%%%%%%%%%%%%%%%%%---prva kontura polozaj
x0 = [0 90*pi/180];
x = fsolve(@zadatak1polozaj1, x0);

fi4a = x(2)
r4a = x(1)
%---ovde se zavrsava polozaj-------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---prva kontura brzine-----------
A = [cos(fi4a) r4a*cos(fi4a + pi/2)
sin(fi4a) r4a*sin(fi4a + pi/2)];
 
b = [
    r2*fi2t*cos(fi2 + pi/2)
    r2*fi2t*sin(fi2 + pi/2)
    ];
    

x = A \ b;

fi4at = x(2)
r4at = x(1)
%ubrzanje
c = [-2*r4at*fi4at *cos(fi4a + pi/2)- r4a*fi4at^2*cos(fi4a + pi)+ r2*fi2t^2*cos(fi2+pi);
      -2*r4at*fi4at *sin(fi4a + pi/2)- r4a*fi4at^2*sin(fi4a + pi)+ r2*fi2t^2*sin(fi2+pi)];
  
 x = A\c;
 fi4att = x(2)
 r4att = x(1)
 
 
 %%%%%%%%%%%%%%%%%%%---2. kontura polozaj
x0 = [0 135*pi/180]; %135, otprilike, izmedju 180 i 90, vidjeno sa working modela
x = fsolve(@zadatak1polozaj2, x0);

fi5 = x(2)
r6 = x(1)
%---ovde se zavrsava polozaj 2-------
 