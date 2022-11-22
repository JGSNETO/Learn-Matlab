% function A = small2zero_v1(A, Limit)
%     for ii= 1:size(A,1)
%         for jj = 1:size(A,2)
%             if A(ii,jj) < limit
%                 A(ii,jj) = 0;
%             end
%         end
%     end
% end

% A=randi(1e6,1e4)
%timeit(@() small2zero_v1(A,50))
% 
% function A=smallzero_v2(A,limit)
%     A(A<limit)=0;
% end

%Call by reference/Value

% function mx = input_mod_test(A)
%     mx=max(A(:));
%     A(1)=0;
% end

%Parfor

parfor i=1:12
    a(i) = max(abs(eig(rand(500))));
end