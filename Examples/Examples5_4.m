clear variables
clc

d = input("Day: ");
m = input("Month: ");
y = input("Year: ");
fprintf("It is %s my dudes", zeller(d,m,y));

function out = zeller(d,m,y)
    
    K = mod(y,100);
    J = floor(y/100);
    a = d;
    b = floor((13*(m+1))/5);
    c = K;
    d = floor(K/4);
    e = floor(J/4);
    f = 5*J;
    x = (a+b+c+d+e+f);
    h = mod(x,7);
    if h == 2
        out="Monday";
    elseif h == 3
        out="Tuesday";
    elseif h == 4
        out="Wednesday";
    elseif h == 5
        out="Thursday";
    elseif h == 6
        out="Friday";
    elseif h == 0
        out="Saturday";
    elseif h == 1
        out="Sunday";
    else
        out="funday!";
    end
end