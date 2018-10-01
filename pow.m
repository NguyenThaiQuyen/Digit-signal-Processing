function [y, ny]= pow(x,n)
    nyl =  floor( sqrt(abs(n(1))));  %  lam tron |sqrt(n1)|
    if(n(1) < 0)                     % neu n(1) < 0
        nyl = nyl *(-1);
    end

    nyr =  floor( sqrt(abs(n(length(n))))); %  lam tron |sqrt(n(length(n)))|
    if(n(length(n) < 0))                    % neu n(length(n)) < 0
        nyr = nyr *(-1);
    end
    ny = nyl : nyr;                 % do dai cua mau

    y = zeros(1, length(ny));       % tao vector y v?i length(ny) phan tu 0

    % thuat toan lay cac gia tr? t?i mau n la so chính phuong
    for i = ny(1) : ny(length(ny))   % index chay tu mau ny(1)
        ans = i^2;
        if( ans > n(1) && ans < n(length(n)) )     % neu ans binh phuong ma nam trong khoang mau cua x
            y(i + 1 - nyl)= x(  ans + 1- n(1) ) ;  % n = i --> x( i + 1- left)
        else y(i + 1 - nyl)= 0;                    % khong co cho bang 0
        end
    end
end

