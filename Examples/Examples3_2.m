clear variables
clc

N = input("Total number of components: ");
for p=1:N
    fprintf("Component %d:\n", p)
    I(p) = input("  Current: ");
    V(p) = input("  Voltage: ");
end

P = I.*V;

for p=1:N
    fprintf("Component %d:\n\tCurrent: %f\n\tVoltage: %f\n\tPower: %f\n", p, I(p), V(p), P(p))
end