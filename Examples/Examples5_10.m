clear variables
clc
hold on
grid on
r = 18;
l = 120e-3;
c = 100e-6;
fmax = 200;
f = linspace(1,fmax,200);
xl = 2*pi.*f*l;
xc = 1./(2*pi*f*c);
z = sqrt(r^2 + xl.^2 + xc.^2);
i = 100./z;
yyaxis left
plot(f,i, "b--")
[imax,idfi] = max(i);
plot(f(idfi),imax,"bo")
xlabel("Frequency (Hz)")
ylabel("Current (A)")
yyaxis right
plot(f,z,"r--")
[zmin,idfz] = min(z);
plot(f(idfz),zmin,"ro")
ylabel("Impedance")
legend("Max Current","Current","Impedance","Min Impedance")
titles = ["Frequency" "Impedance" "Current"];
data = [f;z;i].';
a = [titles;num2cell(data)];
writematrix(a,"test3.xlsx")