n = -10:10; 
x1 = randn(size(n)); %signal x1 random 
x2 = randn(size(n)); %signal x2 random 
a1 = 3; a2 = -2;     %a1, a2 random
y1 = x1.^2; 
y2 = x2.^2;  
axis([-10 10 0 40]);
subplot(211), stem(n,a1*y1+a2*y2);
xlabel('n'); ylabel('a1*y1+a2*y2');
title('a_1y_1(n)+a_2y_2(n)'); 

y = (a1.*x1 + a2.*x2).^2;
axis([-10 10 0 40]);
subplot(212), stem(n,y); 
xlabel('n'); ylabel(' h[a_1x_1(n)+a_2x_2(n)]');
title('H[a_1x_1(n)+a_2x_2(n)]');

%not