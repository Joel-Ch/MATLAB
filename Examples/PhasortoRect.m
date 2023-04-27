clear all
clc
V1a = input("Amplitude: ");
V1p = input("Phase Angle: ");
x = V1a * cosd(V1p);
y = V1p * sind(V1p);
V1 = x + y*1i