N = 40; 
% tim dap ung xung  h1
num1 = [2 -0.5 0 0.5];      % he so di x(n), tu x(n) giam xuong
den1 = [1 -0.1];            % he so di y(n), tu y(n) giam xuong
h1 = impz(num1,den1,N);     % N counter of sample, tim h1
x1 = randn(1,10);           % ham ngau nhien
y1 = conv(x1,h1);           % tong chap cua nguon vao x(n), v?i xung don vi h(n)
 
% tim dap ung xung h2
num2 = [0.3 0 0.2];         
den2 = [1 0 0.1]; 
h2 = impz(num1,den1,N);
x2 = randn(1,10); 
y2 = conv(x2,h2);
  
h = conv(h1,h2);            % tong chap h2
N = 40; 
x = randn(1,N); 
y11 = conv(x,h1); 
y_result1 = conv(y11,h2); 
y21 = conv(x,h2); 
y_result2 = conv(y21,h1); 
y = conv(x,h); 
subplot(311),stem(y_result1); 
xlabel ('n'), ylabel('y_result1')
title('y(n) = (x*h_1(n))*h_2(n)'); 
subplot(312),stem(y_result2); 
xlabel ('n'), ylabel('y_result2)')
title('y(n) = (x*h_2(n))*h_1(n)'); 
subplot(313),stem(y); 
xlabel ('n'), ylabel('y(n)')
title('y(n) = x*(h_1(n)*h_2(n)');

 