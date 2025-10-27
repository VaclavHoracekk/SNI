function [k, y0] = metoda_nejm_ctvercu(x, y)
% Provede vypocet parametru primky

[~,n] = size(y); 
a = sum(x .* y);
b = sum(x);
c = sum(y);
d =  sum (x.^2);
e =  sum(x).^2;

k = (n .* sum(x .* y) - sum(x) .* sum(y)) / ...
    (n .* sum (x.^2) - sum(x).^2);

y0 =    1/n .* (sum(y) - k.*sum(x));

end