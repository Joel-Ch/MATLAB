clear variables
clc

load topo.mat
size(topo)

himalaya=topo(110:140,60:110);

%surf(topo)
%surf(himalaya)

profile = topo(80,1:360);
plot(profile)