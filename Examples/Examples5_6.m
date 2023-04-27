clear variables
clc

NumOfElem = input("Enter size of array: ");
M = zeros(1,NumOfElem);
for count = 1:NumOfElem
    Ending = GetOrdNumEnd(count);
    fprintf("Please enter the %d%s element of vector M: ", count, Ending)
    M(count) = input("");
end

disp(M)

function OrdNumEnd = GetOrdNumEnd(Num)
    
    NumLastTwo = mod(Num,100);
    NumEnd = mod(NumLastTwo,10);
    if NumEnd == 1 && NumLastTwo ~= 11
        OrdNumEnd = "st";
    elseif NumEnd == 3 && NumLastTwo ~= 13
        OrdNumEnd = "rd";
    elseif NumEnd == 2 && NumLastTwo ~= 12
        OrdNumEnd = "nd";
    else
        OrdNumEnd = "th";
    end

end