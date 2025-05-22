clc
clear 

% 1 : x is an array from 0 to 2 with an increment of 0.5 , show  y=sinx
x = 0 : 0.2 : 20;
y = sin(x);
figure;
plot(x,y);
xlabel('x');
ylabel('sinx');
title('first figure');

% 2 : add z = cos(x) to the first plot
z = cos(x);  
figure;
plot(x,y);
hold on;
xlabel('x');
ylabel('sinx , cosx');
title('second figure');
plot(x,z);
hold off;

% 3 : put these two plots next to eachother vertically.
figure;
subplot(2,1,1);
plot(x,y);
xlabel('x');
ylabel('sinx');
title('third figure');
subplot(2,1,2);
plot(x,z);
xlabel('x');
ylabel('cosx');
title('third figure');

% 4 : add sinc(x) to the second plot.
m=sin(x+eps)./(x+eps);
figure;
plot(x,y,x,z,x,m);
xlabel('x');
ylabel('f(x)');
title('4th plot');
legend('sinx', 'cosx' , 'sincx');

% 5 : put all plots together horizontally.
figure;
subplot(1,3,1);
plot(x,y);
xlabel('x');
ylabel('sinx');
title('5.1th plot');

subplot(1,3,2);
plot(x,z);
xlabel('x');
ylabel('cosx');
title('5.2th plot');

subplot(1,3,3);
plot(x,m);
xlabel('x');
ylabel('sincx');
title('5.3th plot');

% 6 : change style of the 4th plot.
figure;
plot(x,y,'r -- .',x,z,'b -. *',x,m,'k : .')
xlabel('x');
ylabel('f(x)');
title('6th figure');
length('sinx' , 'cosx', 'sincx' );

% 7 : put sin , cos in on plot and then put it next to sinc vertically.
figure;
subplot(2,1,1);
plot(x,y,x,z);
xlabel('x');
ylabel('sinx , cosx');
title('7.1th figure');
subplot(2,1,2);
plot(x,m);
xlabel('x');
ylabel('sincx');
title('7.2th figure');

% 8 : add cotx as well. but make x domain smaller.
b = cot(x);
figure;
plot(x,y,x,z,x,m,x,b);
xlabel('x');
ylabel('f(x)');
title('8th figure');

% 9 : show all plots next to eachother horizontally.
figure;
subplot(1,4,1);
plot(x,y);
xlabel('x');
ylabel('sinx');
title('9.1th plot');

subplot(1,4,2);
plot(x,y);
xlabel('x');
ylabel('cosx');
title('9.2th plot');

subplot(1,4,3);
plot(x,m);
xlabel('x');
ylabel('sincx');
title('9.3th plot');

subplot(1,4,4);
plot(x,b);
xlabel('x');
ylabel('tanx');
title('9.4th plot');

% 10 : show all plots next to each other vertically.

figure;
subplot(4,1,1);
plot(x,y);
xlabel('x');
ylabel('sinx');
title('10.1th plot');

subplot(4,1,2);
plot(x,y);
xlabel('x');
ylabel('cosx');
title('10.2th plot');

subplot(4,1,3);
plot(x,m);
xlabel('x');
ylabel('sincx');
title('10.3th plot');

subplot(4,1,4);
plot(x,b);
xlabel('x');
ylabel('tanx');
title('10.4th plot');

% 11 : show all plots in 2x2 matrix.

figure;
subplot(2,2,1);
plot(x,y);
xlabel('x');
ylabel('sinx');
title('11.1th plot');

subplot(2,2,2);
plot(x,y);
xlabel('x');
ylabel('cosx');
title('11.2th plot');

subplot(2,2,3);
plot(x,m);
xlabel('x');
ylabel('sincx');
title('11.3th plot');

subplot(2,2,4);
plot(x,b);
xlabel('x');
ylabel('tanx');
title('11.4th plot');