n1 = -3:2;
x1 = [0 1 -1 2 3 -2 ]; % add sample to length(n) equal
n2 = -3:2;
x2 = [-2 -2 1 1 -4 0];
[xadd, xmul] = Add_Mul(x1, x2); %call function

figure(1)
subplot(2,1,1);
stem(n1,xadd, 'filled'); 
xlabel('n');
ylabel('x1(n) + x2(n)');
title('Exercise 2.7');

subplot(2,1,2);
stem(n2,xmul, 'filled'); 
xlabel('n');
ylabel('x1(n).x2(n)');
title('Exercise 2.7');