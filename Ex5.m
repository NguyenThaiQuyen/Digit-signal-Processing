n = -10:10;
u1 = u(-10, 10);
[y1,n1] = sigshift(u1, n, 3); %call function sigshift.m

% u(n-3)
figure(1)
subplot(2,1,1);
stem(n1,y1); 
xlabel('n');
ylabel('u(n)');
title('Exercise 2.5a');

%u(n+2)
[y2,n2] = sigshift(u1, n, -2);
subplot(2,1,2);
stem(n2,y2); 
xlabel('n');
ylabel('u(n)');
title('Exercise 2.5b');