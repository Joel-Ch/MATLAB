% Determining the different numbers two dice can roll

% Clear all the variables before we start
clear;

% Note: This is a 'brute force approach' we use nested loops to
% cover all posibilities

% Create a 1D array for the count & axis (we know the upper limit is the 
% 2x6 = 12 (as the range of values we can throw is 1-6)
NumbersThrownCount = zeros (1,24);

% Start a timer
tic

% Loop over the range of values of the first die
for throw_1 = 1:6

    % Loop over the range of values of the second die
    for throw_2 = 1:6        
        
        for throw_3 = 1:6

            for throw_4 = 1:6

                % Sum the values of the two die
                RollTotal = throw_1 + throw_2 + throw_3 + throw_4;
        
		        % Increase the count of this throw
                NumbersThrownCount(RollTotal) = NumbersThrownCount(RollTotal) + 1;

            end

        end

    end
    
end

% stop timer 
toc

% Now we plot a graph of the number of times each number is thrown
stem(NumbersThrownCount);
title("Ball");

% Ask user for a a value they would like the probability of throwing
Throw = AskForRealNum("the sum of dice");

Probability = NumbersThrownCount(Throw) / sum(NumbersThrownCount) * 100;

% We use fprintf for output (the format is the same as for printf in C)
fprintf("The probability of throwing a %d is %f %%\n", Throw, Probability);

% End of code

function Num = AskForRealNum(VarName)

    NumStr= input("Enter a real, numerical number for "+ VarName +": ", "s");

    Num = str2double(NumStr);

    while ~isreal(Num) || isinf(Num) || isnan(Num)
        if ~isreal(Num)
            fprintf("%s must be real\n", VarName)
        elseif isinf(Num)
            fprintf("%s must be finite\n", VarName)
        elseif isnan(Num)
            fprintf("%s must be a number\n", VarName)
        else
            disp("?")
        end
        NumStr= input("Enter a real, numerical number for "+ VarName +": ", "s");
        Num = str2double(NumStr);
    end
end
