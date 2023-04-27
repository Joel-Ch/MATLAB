clear variables
clc

a = rand(100,1);
writematrix("Heading", "test2.xlsx")
writematrix(a,"test2.xlsx","WriteMode","Append")