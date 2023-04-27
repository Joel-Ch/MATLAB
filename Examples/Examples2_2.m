clear vars
clc
celsius = [30 31 31 33 100 32 32 34 30 31 31 100 19 32 32 34];
corrected = [30 31 31 33 32.5 32 32 34 30 31 31 25 32 32 34];

plot(celsius)
title('Plot of temperature for each day on imaginary volcano')
xlabel('days')
ylabel('temperature(^\circC)')

week_a = celsius(1:7);
week_b = celsius(8:14);
week_a2 = corrected(1:7);
week_b2 = corrected(8:14);
mean(week_a)
mean(week_b)
mean(week_a2)
mean(week_b2)


