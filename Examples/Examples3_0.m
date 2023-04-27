clear variables
clc


t = linspace(0,1,1000);
a = 1;
subplot(3,1,1)
hold on
C = 0;
c = 0;
for f = 1:2:21
A = (a/f)*sin(2*pi*f*t);
C = C+A;
c = c+1;
M(c) = max(A);
plot(t,A)
end
subplot(3,1,1)
title("Harmonics")
xlabel("Time (s)")
ylabel("Amplitude")
subplot(3,1,2)
plot(t,C)
title("Total")
xlabel("Time (s)")
ylabel("Amplitude")
subplot(3,1,3)
f = 1:2:21;
stem(f,M)
title("Frequencies")
xlabel("Frequency (Hz)")
ylabel("Amplitude")