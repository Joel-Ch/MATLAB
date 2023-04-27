clear variables
clc

I = AskForRealNum("Current");
V = AskForRealNum("Voltage");
T = AskForRealNum("Time");
E = I*V*T;
fprintf("I: %f V: %f T: %f E: %f\n", I, V, T, E);

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