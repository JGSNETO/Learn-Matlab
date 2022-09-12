% % If-statement
% 
% function guess_my_number(x)
% 
% if x ==2
%     fprintf('Correct number\n');
% end
% 
% %IF-ELSE-STATEMENT
% function guess_my_number(x)
% 
% if x ==2
%     fprintf('Correct number\n');
% else if x <30
%     fprintf('Wrong number\n');
% else 
%     fprintf('Last possibility\n');
% end
% 

% RELATIONAL OPERANDS

% 10 ==20
% 
% 3 == (35-32)
% 
% x = (33>3)

% Example of robustness

% function [table summa] = multable(n, m)
% 
% if nargin < 1
%     error('must have at least one input argument');
% end

% Persistent variable

function total = accumulative(n)
persistent summa;
    if isempty(summa)
        summa = n;
    else
        summa = summa +n;
    end
total = summa; 
end