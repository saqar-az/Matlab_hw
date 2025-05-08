clc
clear

% 1 : 1. make a 2x3 random matrix within [10,45]
A = zeros(2,3);
for i = 1:2
    for j = 1:3
        A(i,j) = rand()*35+10;
    end
end

% 2 : calculate Y=6X−3 , X= a 3×3 ones matrix
X = ones(3);
Y = zeros(3);
for i = 1:3
    for j = 1:3
        Y(i,j) = 6*X(i,j)-3;
    end
end

% 3 : calculate y=(b−1)/(2a)
a = [2, 3
    4, 6];
b = [1, 3 
    3, 6];

[m, n] = size(a);
y = zeros(m, n);

for i = 1:m
    for j = 1:n
        y(i,j) = (b(i,j) - 1) / (2*a(i,j));
    end
end

% 4 : calculate y_1 = 2a_1/b_1-1 cuasing inf
a_1 = [2 3
      4 5];
b_1 = [1 3
      3 5];
y_1 = zeros(size(a,1),size(a,2));

for i = 1:m
    for j = 1:n
        y_1(i,j) = (2 * a(i,j)) / (b(i,j) - 1 +eps);
    end
end

% 5 : calculate M+N , M=multiplier of number 5 in ranges (0, 30) , N=5 equally spaced points from -1 to 1
N = 5 : 5 :25;
M = logspace(-1, 1, 5);
Z = zeros(1, 5); 
for i = 1:5
    Z(i) = M(i) + N(i);
end

% 6 : calculate U=Q*W , Q = only  the last two rows of v and only the first 4 columns and v is a random 5*6 matrix and W=2Q'.
v = rand(5,6);
Q = v( 4:end ,1:4);
W = 2*Q';
[m, n] = size(Q); 
[p, q] = size(W);  
U = zeros(m, q);

for i = 1:m
    for j = 1:q
        sumVal = 0;
        for k = 1:n
            sumVal = sumVal + Q(i, k) * W(k, j);
        end
        U(i, j) = sumVal;
    end
end

% 7 : reversing matrix using loop
c = [1 2 3
     4 5 6
     7 8 9];
[m, n] = size(A);
d = zeros(m, n);
for i = 1:m
    for j = 1:n
        d(i, j) = c(m-i+1,n-j+1);
    end
end

% 8 : increments each element of matrix l :
l=[2,3,7,19];
for i=1:length(l)
    l(i)=l(i)+1;
end

% 9 : each o(i) should become 3o(i)+3 , o=l in previous qustion
o = zeros(size(l,1));
for i=1:length(l)
    o(i)=3*l(i)+3;
end

% 10 : calculate row-wise cumulative sum matrix L for S , S = random 4*4 matrix within [-10,10]
S = rand(4,4)*20 - 10;
L = zeros(4,4);
for i = 1:4
    for j = 1:4
        cumSum = 0; 
        for k = 1:j
            cumSum = cumSum + S(i, k);
        end
        L(i, j) = cumSum;
    end
end


