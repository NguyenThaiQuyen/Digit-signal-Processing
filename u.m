function [u] = u(n1,n2)
if ( n1 <0 && n2 <0)
    u = zeros(1,n2 - n1 +1);
elseif( n1 > 0 && n2 >0)
    u = ones(1,n2 - n1 +1);
else u = [zeros(1,-n1) ones(1,n2 +1)];  
end
end