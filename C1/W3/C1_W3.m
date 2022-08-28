%Matrices
xvalues = [1,2,10]
X = [0 1 -1;2.5 pi 100]
Y = [1;2;3]
size(X)
size(Y)

%Colon Operetor
%Start in one, increment 3, no hire than 7
x = 1:3:7
y = 1:3:8

%Accessing Parts of a Matrix
x = [1:4; 5:8; 9:12]
x(2,3) %Row index x Column Index
center = x(2,3)
x(2,3) = 97
x(2,[1 3]) %Second row, first and third columns. Virgula obrigatória
x([2,1],2)
%Specify the last index
x(end,1) = 1000
x(1,end) = 1000
x(1,end-1) = 1000
x(:,:) % All rows and all columns