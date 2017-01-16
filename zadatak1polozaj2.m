function [ F ] = zadatak1polozaj2(x)

    fi6 = 0;
    r5 = 0.31;
    h = 0.9;
    fih = degtorad(90);
    r4 = 0.8;
    fi4 = 1.6699;
    
  F=[
    x(1) * cos(fi6) - r5 * cos(x(2)) + h * cos(fih) - r4* cos(fi4)
    x(1) * sin(fi6) - r5 * sin(x(2)) + h * sin(fih) - r4* sin(fi4)
    ];

end

