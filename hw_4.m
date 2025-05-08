clc
clear

% 1 : calculate  y=cos(abs(x^2))*x^2 , x= 50 points btw 10,20pi.
x = linspace(0,20*pi,50);
y = cos(abs(x.^2)).*(x.^2);

% 2 : calculate  y1=(abs(x1))^2*sin(x1) , x1= an array from 0 to 10 with an increment of 2.
x1 = 0 : 2 : 10;
y1 = (abs(x1)).^2.*sin(x1);

% 3 : make an array from 0 to 3n with an increment of 0.2n, n is input.
n = input('type a number : ');
f = 0 : 0.2*n : 3*n;

% 4 : p=an array from 2 to 10 with increment of 1.5.
p1= elements of p that are >=5 the same size as p.
p2= elements of p that are <5 the same size as p.
p3= elements of p that are 2<=p<=8 the same size as p.
p = 2 : 1.5 : 10;
p1 = p.*(p>=5);
p2 = p.*(p<5);
p3 = p.*((p>=2 & p<=8));

% 5 : k=an array from 3 to 15 with increment of 2.
k1= elements of p that are ~k>7 discarding zero elements of logical matrix.
k2= elements of p that are k<=10 discarding zero elements of logical matrix.
k3= elements of p that are 2<=p<=4 or 6<p<10 discarding zero elements of logical matrix.
k = 3 : 2 : 15;
k1 = k(~(k>7));
k2 = k(k<=10);
k3 = k((k>=2 & k<=4) | (k<6 & k>10));

% 6 : put w in the mth element of z , z=8 equally spaced points from -2 to 2.
z = linspace(-2,2,8);
m = input('type a number btw 1 and 8 : ');
w = input('type a number 8 : ');
z(m)=w;

% 7 : delete rth column of qq , q = multiplier of number 5 in ranges [0, 30) , qq =[q ;2*q].
q = 0 : 5 :25;
qq = [q
    2*q];
r = input('type a number btw 1 and 6 : ');
qq(: , r) = [];

% 8 : delete uth column of tt , t = multiplier of number 3 in ranges [0,24] , tt =[t ;2*t].
t = 0 : 3 :24;
tt = [t
    2*t];
u = input('type a number btw 2 and 8 : ');
ttt = tt(: , [1:u-1 , u+1:end]);

% 9 : delete lth row of ii , i = multiplier of number 3 in ranges(0,24) , ii =[i;2*i;1.5*i,0.5*i].
i = 3 : 3 :21;
ii = [i
    2*i
    1.5*i
    0.5*i];
l = input('type a number btw 1 and 4 : ');
iii = ii([1:l-1 , l+1:end] , : );

% 10 : e[a][b] = d , d and a and b are input , e = [5 points btw 1,20;5 points btw 20,30;5 points btw 1,10]
e = [linspace(1,20,5)
    linspace(20,30,5)
    linspace(1,10,5)];
a = input('type a number btw 1 and 3 : ');
b = input('type a number btw 1 and 5 : ');
d = input('type a number : ');
e(a,b) = d;
