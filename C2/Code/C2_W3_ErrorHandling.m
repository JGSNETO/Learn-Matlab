% function h=my_harmonic(n)
%     if ~isscalar(n) || n < 1 || n~=floor(n)
%         error('Positive integer input expected...');
%     end
%     h=1;
%     for ii=2:n
%         h=h+1/ii;
%     end
% end

% Prevent the program to stop when a error occurs
% 
% function h = my_harmonic_v2(n)
%     if ~isscalar(n)
%         n=n(1);
%     end;
%     n=max(1,round(abs(n)));
%     h=1;
%     for ii=2:n
%         h=h+1/ii;
%     end
% end

%Implementing exception handling
% 
% function h=robust_harmonic_chain(n)
%     h = sub_harmonic(n);
% end
% 
% function h = sub_harmonic(n)
%     try
%         h=my_harmonic(n);
%     catch 
%         h=[];
%         warning('Wrong input provided')
%     end
%end

%Assert

function assert_example
    x=abs(randn);
    assert(v>=0);
end

function x=abs(x)
    x=-1*x;
end