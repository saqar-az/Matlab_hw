clc
clear

% 1 : take a number, if 10^nmber is 100 make a 100 equally spaced points from -5 to 5 else output should be number equally spaced points from -1 to 1. 
x = input('enter a number : ');
if (10^x==100)
    a= logspace(-5, 5, 100);
elseif x>-1
    a= logspace(-1, 1, x);
else 
    fprintf('not valid input')
end    

% 2 : take a number greater than 10, then print the sum of -10 to number.
y = input('enter a number greater than 10 : ');
while(y<=10)
    y = input('enter a number greater than 10 : ');
end
sum=0;
for i=-10:y
    sum=i+sum;
end        
disp(sum);

% 3 : take a binary number, get its decimal equivalent.
b = input('enter a binary number using [] : ');
valid = true;
while (valid==true)
    for i = 1:length(b)
        if (b(i) ~= 1 && b(i) ~= 0)
            b = input('enter a binary number using [] : ');
        else
            valid = false;
        end    
    end   
end
for j = length(b):-1:1
        if b(j) == 1
            b(j) = 2^(length(b) - j);
        else
            b(j) = 0;
        end
end
b_decimal = sum(b);     

% 4 : take a decimal number, get its binary equivalent.
c = input('enter a positive decimal number: ');
while (c < 0)
    c = input('enter a positive decimal number: ');
end
c_binary = '';
if c == 0
    c_binary = '0';
end
while (c > 0)
    cc = mod(c, 2);            
    c_binary = [num2str(cc),c_binary];  
    c = floor(c / 2);                
end

% 5 : guessing the number.
target = randi(50);
attempts = 0;
fprintf('Guess the number between 1 and 50!\n');
while true
    guess = input('Your guess: ');
    attempts = attempts + 1;
    if guess < target
        disp('Too low!');
    elseif guess > target
        disp('Too high!');
    else
        disp('Correct!');
        break;
    end
end
fprintf('\nYou guessed the correct number in %d attempts.\n', attempts);

% 6 : delete said row and column.
z = rand(4,6);
user_input = input('enter a row (1-4) and a column (1-6) using []: ');
ro = user_input(1);
col = user_input(2);
while (ro < 1 || ro > 4 || col < 1 || col > 6)
    user_input = input('enter a row (1-4) and a column (1-6) using []: ');
    ro = user_input(1);
    col = user_input(2);
end
zz = z([1:ro-1 , ro+1:end] , [1:col-1 , col+1:end]);

% 7 : find the minimum element of matrix.
d = randi(100,5,5);  
min= d(1);
for i = 1:numel(d)
    if d(i) < min
        min = d(i);
    end
end

% 8 : find the maximum element of matrix.
f = randi(100,7,5);      
max = f(1,1);
for row = 1:size(f,1)
    col = 1;
    while col <= size(f,2)
        if f(row, col) > max   
            max = f(row, col); 
        end
        col = col + 1;     
    end
end

% 9 : calculate gcd using Euclidean Algorithm.
a = input('enter the first positive integer : ');
b = input('enter the second positive integer : ');
while (a <= 0 || b <= 0) 
    fprintf('both numbers must be positive.\n');
    a = input('enter the first positive integer : ');
    b = input('enter the second positive integer : ');
end
while b ~= 0
    remainder = mod(a, b);
    a = b;
    b = remainder;
end
fprintf('GCD = %d\n', a);

% 10 : Take a number, then subtract its last digit from the number,and keep repeating.
k = input('enter a number greater than 0 : ');
while(k<0)
    k = input('enter a number greater than 0 : ');
end
result = k;
temp = k;
while temp > 0
    digit = mod(temp, 10);
    result = result - digit;
    temp = floor(temp / 10);
end

