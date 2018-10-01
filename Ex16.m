%cau a
nx = [-20 : 20];                %do dai mau cua tin hieu vao
u_n = u(-20, 20);               % chuoi don v?
x = (-2).^u_n;                  % tin hieu vao x(n)

nh = [-3: 3];                   % do dai mau cua cac dap ung xung

h1 = [ 0, 0, 1, 0, -1, 3 , 0];  % gia tri bien do t?i tung mau, them 0 khi m? rong mau
h2 = [0,  2, -2, 1, 0, 0, 0];
h3 = [0 , 3, 4, -1 ,1, 0 , 0];
h4 = [ 0 , 0, -3, 5 ,6 , -1 ,1];

[y11, n11]= conv_n(x, nx, h1, nh);       % tap chap cua x va h1
[y22, n22]= conv_n(y11, n11, h2, nh);    % tap chap cua y11  va h2
[y33, n33]= conv_n(y11, n11, h3, nh);    % tap chap cua y11  va h3

ySum = y22 + y33;                        % tong cua dap ung xung song song h2, h3
 [y44, n44]= conv_n(ySum, n22, h4, nh);  % tap chap cua ySum  va h4
figure(1);
subplot(2,1,1);
stem(n44, y44);
xlabel ('n'), ylabel('y(n)');
title('y(n) = h(n)*x(n)');

% cau b dap ung xung tuong duong
subplot(2,1,2);
hsum= h2+ h3;                            % tinh dap ung xung h2 song song h3
[h11, nh11]= conv_n(h1, nh, hsum, nh);
[h22, nh22]= conv_n(h11, nh11, h4, nh);   % dap ung xung tuong duong ca he thong
[y, ny] = conv_n(x, nx, h22, nh22);
stem(ny, y);
xlabel ('n'), ylabel('y(n)');
title('y(n) = h(n)*x(n)');