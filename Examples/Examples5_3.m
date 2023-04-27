clear variables
clc
grid on

a = 1;
b = 1;
c = 1;

x = -5:0.5:5;
y = CalculateY(a,b,c,x);

plot(x,y)

function y = CalculateY(a,b,c,x)
    y = (a*(x.^2))+(b*x)+c;
end