A = [4 5; 3 -2];
B = [6; 14];
x= A\B %backslash
plot(x(1),x(2),'*');
% 
% rng(0)
% A=rand(20,20);
% B=rand(20,1);
% x = A\B;
% e=A*x-B;
% max(abs(e))

% %Under-determined equations
% A = [2 10]; b=4;
% x = A\b

%Ill-Conditioned

A1=[27.3 59.4; 63.2 33.4];
cond(A1)
A2=[41.9 59.1; 57.5 81.1];
cond(A2) %Bigger it is worst