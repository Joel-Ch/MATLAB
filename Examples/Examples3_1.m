clear variables
clc

Min = input("Minimum: ");
Max = input("Maximum: ");

if Min > Max
    disp("Min > Max, swapping")
    Temp = Min;
    Min = Max;
    Max = Temp;
elseif Min < Max
    disp("Min < Max, using...")
elseif Max == Min
        disp("Max = Min, replacing with standard values")
        Min = 1;
        Max = 10;
end

N = Max - Min + 1;
Sum = 0;

for n=Min:Max
    Sum = Sum+n;
end

disp("The sum of ")
disp(N)
disp(" integers is ")
disp(Sum)