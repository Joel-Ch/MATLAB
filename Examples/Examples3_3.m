clear variables
clc

disp("the name of the game to the user")
Min = input("Min Number: ");
Max = input("Max Number: ");

Num = randi([Min,Max],1);
count = 0;
Guess = 0;
while Guess ~= Num
Guess = input("Guess a number: ");
    if Guess < Num
        disp("Guess Higher")
    elseif Guess > Num
        disp("Guess Lower")
    end
    count = count + 1;
end
disp("Congrats, that's correct!")
fprintf("You took %d tries to guess the number %d\n", count, Num)