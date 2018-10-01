h1 = [1 2 -2 -3];  
h2 = [-2 0 3 1];  
h = conv(h1,h2); 
N = 30; 
x = randn(1,N); 
y11 = conv(x,h1); 
y1 = conv(y11,h2); 
y21 = conv(x,h2); 
y2 = conv(y21,h1); 
y = conv(x,h); 
subplot(311),stem(y1); 
xlabel ('n'), ylabel('y1(n)');
title('y(n) = (x*h_1(n))*h_2(n)'); 
subplot(312),stem(y2); 
xlabel ('n'), ylabel('y2(n)')
title('y(n) = (x*h_2(n))*h_1(n)'); 
subplot(313),stem(y); 
xlabel ('n'), ylabel('y(n)')
title('y(n) = x*(h_1(n)*h_2(n)');