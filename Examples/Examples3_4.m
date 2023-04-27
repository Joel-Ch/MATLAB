clear variables
clc

Times = 1:0.01:50;
waveOne = 0.5*sin(2*pi*0.05*Times);
subplot(4,1,1)
plot(Times,waveOne)
xlabel=("Time(S)");
ylabel=("Amplitude");

waveTwo = 2*sin(2*pi*0.5*Times);
subplot(4,1,2)
plot(Times,waveTwo)

AmWave = waveOne .* (1+waveTwo);

subplot(4,1,3)
plot(Times,AmWave)

subplot(4,1,4)
load('handel')
plot(y(1:70000))