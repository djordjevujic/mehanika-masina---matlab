function [ F ] = zadatak1polozaj1(x)


    r1 = 0.4;
    fi1=degtorad(90);
    r2 = 0.16;
    fi2 = degtorad(110);
  F=[
    r1*cos(fi1) + r2*cos(fi2)-x(1)*cos(x(2));
    r1*sin(fi1) + r2*sin(fi2)-x(1)*sin(x(2));
    ];

end

