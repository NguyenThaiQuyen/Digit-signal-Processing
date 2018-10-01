function [En] = E(x)
En = 0;
for k = 1:length(x)
    En = En + abs(x(k)).^2;
end


