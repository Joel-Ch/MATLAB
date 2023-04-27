clear all
clc
f = 500:10:1000;
R = 30;
L = 20e-3;
C = 2e-6;
A = 50;
theta = (10)*(pi/180);
[X,Y] = pol2cart(theta,A);
V = X+Y*1i;
Xl = (2*pi*f*L)*1i;
Xc = (1./(2*pi*f*C))*-1i;
Z = Xl + Xc + R;
plot(f,abs(Z));