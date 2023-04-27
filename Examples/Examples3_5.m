clear variables
clc

V = [1.15 2.45 3.19 4.24 6.72 9.02 11.54 12.56];
I = [0.19 0.41 0.51 0.69 1.17 1.44 1.98 2.05];

Ith = V ./6;
hold on
grid on
plot(I,V,'m*--',Ith,V,'b.-')
xlabel("Voltage,(V)")
ylabel("Current, (A)")
legend("Experimental","Theoretical")
title("Theoretical Current vs Measured Current")
