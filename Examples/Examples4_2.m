clear variables
clc

a = rand(2,2)
disp(a(1,1));
disp(a(2,2));
temp = a(1,1);
a(1,1) = a(2,2);
a(2,2) = temp;
a

e = rand(1,10)
f = rand(10,1)
g = zeros(4,4)
h = eye(5,5)
i = ones(5,5)
j = rand(40,40)

surf(j)
