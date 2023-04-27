clear variables
clc

totalTime = 250;%length of graph
COR = 0.75;%COR of ball and floor
starth = 0;% start height
startv = 15;%initial vertical velocity

g = -9.81;
timeStep = 0.05;
height = 1:totalTime;
v = 1:length(height);
height(1) = starth;
v(1) = startv;

% this function calculates values for v and s wrt t
for t = 2:length(height)%starts at two so t-1 is valid
    v(t) = v(t-1) + g*timeStep;%find velocity (v = u+at)
    height(t) = height(t-1) + timeStep*0.5*(v(t)+v(t-1));%find height (s = s0 + 0.5*(u+v)*t)
    
    if height(t) <= 0%if hit the floor
        v(t) = v(t-1) * -COR;% reverse and COR etc
        height(t) = 0;% so it doesn't go underground
    end
end

for q = 1:length(height)
    %plot ball
    subplot(3,1,1)
    grid on
    plot(q,height(q),"bo")
    axis([0,length(height),0,max(height)])
    title("Ball")
    %plot displacement graph
    subplot(3,1,2)
    grid on
    hold on
    plot(q,height(q),"b.")
    axis([0,length(height),0,max(height)])
    title("Displacement")
    %plot velocity graph
    subplot(3,1,3)
    grid on
    hold on
    plot(q,v(q),"r.")
    axis([0,length(height),min(v),-min(v)])
    title("Velocity")
    M(q) = getframe(gcf);
end


v = VideoWriter('ball.avi','Uncompressed AVI');
open(v);
writeVideo(v,M)
close(v);
