clc
clear

% 1 : a 2*3 random matrix within [10,45] : 
A = rand(2,3)*35+10;

% 2 : a 5*3 random matrix within [-8,8] : 
B = rand(5,3)*16-8;

% 3 : calculate : Y=4X-10 ,X =3*3 ones matrix :
X = ones(3);
Y = 4*X-10;

% 4 : calculate: Y1=2X1X2+8 ,X1 =2*3 ones matrix , X2 = 3*1 zeros matrix :
X1 = ones(2,3);
X2 = zeros(3,1);
Y1 = 2*X1*X2+8;

% 5 : calculate: Yi=(bi-1)/2ai :
a = [2 3
    4 5];
b = [1 3
    3 1];
yi = (b-1)./(2.*a);

% 6 : calculate: Yi=2ai/(bi-1) --> need to fix inf :
yi_2 = (2.*a)./(b-1+eps);

% 7 : calculate: Yi=((bi-2)^3)/2ai :
yi_3 = ((b-2).^3)./(2.*a);

% 8 : calculate : Z=MN ,M : a 2*1 random matrix within [5,15] , N: 5 equally spaced points from 1 to 4 :
M = rand(2,1)*10+5;
N = logspace(1, 4, 5);
Z = M*N;

% 9 : calculate : U=QW ,U : a 1*3 random matrix within [4,8] , Q: 3 equally spaced points from 1 to 8 :
Q = rand(1,3)*4+4;
W = logspace(1, 8, 3)'; % "'" transposes it.
U = Q*W;

% 10 : calculate : Ui=QiWi ,U : a 1*3 random matrix within [4,8] , Q: 3 equally spaced points from 1 to 8 :
Ui = Q.*W;

% 11 : a 5*5 random matrix within [-10,10] : 
S = rand(5,5)*20-10;
