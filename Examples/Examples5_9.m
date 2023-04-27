clear variables
clc
hold on
Linear = readmatrix("C:\Users\poely\Downloads\SampleData2.xlsx", "sheet", "Linear");
plot(Linear(:,1),Linear(:,2),"r")
Quadratic = readmatrix("C:\Users\poely\Downloads\SampleData2.xlsx", "sheet", "Quadratic");
plot(Quadratic(:,1),Quadratic(:,2),"b")
Third(:,1) = Linear(:,1);
Third(:,2) = Quadratic(:,2) ./ Linear(:,2);
plot(Third(:,1),Third(:,2),"m")
writematrix(Third,"C:\Users\poely\Downloads\SampleData2.xlsx","sheet", "Third");

