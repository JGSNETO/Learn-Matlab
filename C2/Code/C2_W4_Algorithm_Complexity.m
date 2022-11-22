%fibo(50) -> Takes to long
% function f = fibo(n)
%     if n<=2
%         f=1;
%     else
%         f=fibo(n-2) +fibo(n-1)
%     end
% end

% Fibo much more faster 
% function f=fibo_last(n)
%     f=fibo_list(n);
%     f=f(end);
% end
% 
% function f=fibo_list(n)
%     if n<=2
%         f=ones(1,n)
%     else
%         f=fibo_list(n-1);
%         f=[f f(end-1)+f(end)];
%     end
% end

%Reversing one vector
%Built-in functions
% v=1:10
% v_reversed = v(end:-1:1);
% v_reversed = flip(v)

%Slow flip
% function v=my_flip(v)
%     for ii = 2:length(v)
%         tmp=v(ii);
%         for jj = ii:-1:2
%             v(jj) = v(jj-1);
%         end
%         v(1)=tmp;
%     end
% end

%Fast flip
% function v = fast_flip(v)
%     for ii=1:ceil(length(v)/2)
%         tmp=v(ii);
%         v(ii)=v(end-ii+1);
%         v(end-ii+1) = tmp;
%     end
% end
%     

 