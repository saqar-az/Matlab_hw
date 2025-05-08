clc
clear

% 1 : 2nd,5th elements of matrix a.
a = [4 5 7
    0 7 6
    1 5 4];

h = a([2,5])';
 
% 2 : z=x*y , y=all elements of the last column of a , x= a 3*3 random matrix.
y = a( : ,end);
x = rand(3);
z = x*y;

% 3 : r=p*q , p=all elements of the 2nd row of a , q= a 3*1 random matrix.
p = a(2, :);
q = rand(3,1);
r = p*q;

% 4 : delete all elements of 5th row of matrix b , b= a random 8*8 matrix.
b = rand(8);
bb = b([1:4, 6:end] , :);

% 5 : w=n/m , m= number of rows matrix v ,  n= number of columns matrix v.
v = rand(5,6);
[m,n] = size(v);
w = n/m;

% 6 : v1= only the last two rows of v and only the first 4 columns.
v1 = v( 4:end ,1:4);

% 7 : v2= only the 1st and 3rd rows of v and only the 2nd and 4th columns.
v2 = v( 1:2:3 ,2:2:4);

% 8 : delete all elements of 3rd column of matrix u , u= 2*4 random matrix within [10,45].
u = rand(2,4)*35+10;
uu = u( : ,[1:2, 4:end]);

% 9 :  f= (size of matrix k)*k , k= a random 4*2 matrix within [-6,6]. 
% size = max(row,column).
k = rand(4,2)*12-6;
size_k = size(k);
kk = size_k(1)*k;

% 10 : ji=di/ei , d= transpose all elements of 1st row , e= all elements of 2nd column.
t = [5 0 1
    2 8 1
    7 5 9];

e = t( : ,2); 
d = t( 1, : )';
j = d./(e+eps);

