% Recursion definition:
% Part 1: 1
% Part 2: n * (n-1)

function f = rfact(n)
    if ~isscalar(n) || n ~=fix(n) || n<0
        error('Non-negative  integer scalar input expected');
    end
    if n==0
        f = 1;
    else
        f = n *(n-1);
    end
end