clear variables
clc
select = 1;
numin = inputVar("Enter the first number: ");
while ~isempty(numin)
    mat(1,select) = numin;
    select = select + 1;
    numin = inputVar("Enter another number: ");
end
disp(mat)
pass = false;
while ~pass
    pass = true;
    for a = 1:size(mat,2)-1
        if mat(a) > mat(a+1)
            temp = mat(a);
            mat(a) = mat(a+1);
            mat(a+1) = temp;
            pass = false;
        end
    end
end
disp(mat)

function out = inputVar(inputStr)
    pass = 0;
    while ~pass
        out = input(inputStr,'s');
        if isempty(out)
            pass = 1;
        else
            out = str2double(out);
            if isnan(out)
                disp("Enter a number")
            elseif ~isreal(out)
                disp("Enter a real number")
            else
                pass=1;
            end
        end
    end
end
