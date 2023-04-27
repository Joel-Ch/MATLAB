clear variables
clc

Mag = input("Magnitude: ");
Ang = input("Phase Angle: ");

Voltage = ConvertToRect(Mag,Ang);
disp(Voltage)

function Voltage = ConvertToRect(Mag,Ang)

R = Mag*cosd(Ang);
I = Mag*sind(Ang);
Voltage = R + I*1i;
end