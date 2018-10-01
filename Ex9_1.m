n = -10:10; 
figure(1)
subplot(2, 1, 1);
x = randn(size(n));                % signal random  
y = x.*cos(0.5*n);                 %y(n) = x(n)cos(0.5n)  
ynk = [0 0 0 0 y];                 %shift right y(n) 4 sample -> y(n – 4)

subplot(2,1,2);
x1 = [0 0 0 0 x];                   %shift right x(n) 4 sample -> x(n – 4) 
n1 = [n 11:14];                     %add  value sample n 
yn = x1.*cos(0.5*n1);               % yn = h[x(n – 4)]

subplot(211), stem(n1,ynk),  xlabel ('n'), ylabel('y(n)'),title('y(n – k)'); 
subplot(212), stem(n1,yn), xlabel ('n'), ylabel('y(n)'), title('H[x(n – k)]'); 

% not bat bien