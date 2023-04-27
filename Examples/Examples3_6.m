clear variables
clc

f = input("Enter frequency: ");
Tau = input("Enter the time constant: ");
t = linspace(0,5*Tau,1000);


grid on

Sin = sin(2*pi*f*t);
subplot(3,1,1)
plot(t,Sin)
title("Sine")
xlabel("Time, (s)")
ylabel("Amplitude")

Exp = exp(-t/Tau);
subplot(3,1,2)
plot(t,Exp)
title("Exp")
xlabel("Time, (s)")
ylabel("Amplitude")


Osc = Exp .* Sin;
subplot(3,1,3)
plot(t,Osc)
title("Oscillation")
xlabel("Time, (s)")
ylabel("Amplitude")
