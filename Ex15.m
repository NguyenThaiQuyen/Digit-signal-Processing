h= [ 0 0 0.4 0.8 0.4 0 0];  % ch? s? m?u cua dap ung xung
nh= [-1: 5];                % do dai mau h(n)
x= [ 0 1 0.6 0 0];          % ch? s? m?u cua tin hieu vao x(n)
nx= [ -1 : 3];              % do dai mau x(n)
[y,ny] = conv_n(x,nx,h,nh); % dung ham conv_n
stem(ny, y);
xlabel ('n'), ylabel('y(n)');
title('y(n) = h(n)*x(n)'); 