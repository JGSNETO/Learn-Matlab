% % Introduction to Functions
% rand(3,4)
% %Create a function
% %edit
% %In another file
% %function myRand
% %a = 1+rand(3,4)*9
% %end     
% %Function I/O
% 
% %Formal definition of Functions
% %Subfunctions
% % function [a, s] = myRand(low,high)
% % a =  low+rand(3,4)*righ;
% % s = sumAllElements(a);
% % end
% % function summa = sumAllElements(M)
% % v = M(:);
% % summa = sum(v);
% % end
% 
% %Scope
% function [a, s] = myRand(low,high)
% a =  low+rand(3,4)*righ;
% s = sumAllElements(a);
% end
% 
% function summa = sumAllElements(M)
% global v;
% v = M(:);
% summa = sum(v);
% end
% 
% %Test
% function [top_left, top_right, bottom_left, bottom_right] = corners(x)
% top_left= x(1,1)
% top_right=x(1,end)
% bottom_left=x(end,1)
% bottom_right=x(end,end)
% end

%Y = ceil( X ) rounds each element of X to the nearest integer greater than or equal to that element.
% function fare= taxi_fare(d,t)
% d=ceil(d);
% t=ceil(t);
% D=ceil(d-1);
% fare=5+2*D+0.25*t;
% end