n= [-10:10];
u_n = u(-10, 10);  % call function u.m 
x1= (0.5).^n.*u_n; % x(n) = a mu n * u(n)

%graphic of function 1
figure(1);
subplot(2,1,1);
stem(n,x1); 
xlabel('n');
ylabel('u(n)');
title('Exercise 2.2a');

%graphic of function 2
figure(1);
x2= 3.^n.*u_n;
subplot(2,1,2);
stem(n,x2); 
xlabel('n');
ylabel('u(n)');
title('Exercise 2.2b');