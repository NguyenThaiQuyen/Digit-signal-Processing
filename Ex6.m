n = -10:10;
u1 = u(-10, 10);
x= 2*stepseq(3, -10, 10) + impseq(2, -10, 10);
figure(1)

% x(n) = 2u(n-3) + denta(n-2)
subplot(4,1,1);
stem(n,x, 'filled'); 
xlabel('n');
ylabel('x(n)');
title('Exercise 2.6a');

%x(-n)
subplot(4,1,2);
stem(n,fliplr(x), 'filled'); 
xlabel('n');
ylabel('x(-n)');
title('Exercise 2.6b');

%2x(n)
subplot(4,1,3);
stem(n,2.*x,'filled'); 
xlabel('n');
ylabel('2x(n)');
title('Exercise 2.6c');

%x(2n)
n4 = -5:5;                      % increment  2n , sample decrement.
x4 = zeros(1, length(n4));      % declare vetor have length(n4) value 0
for i = -10: 10                 % index in length(x)
    if( i/2 == floor(i/2) )     % at position even , get value of x
        x4( i/2+ 6)= x(i+11);   % n = i --> x( i + 1- left) because index 1 to ....
    end
end
subplot(4,1,4);
stem(n4,x4', 'filled'); 
xlabel('n');
ylabel('x(2n)');
title('Exercise 2.6d');


