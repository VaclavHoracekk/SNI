function [k, y0] = metoda_nejm_ctvercu(x, y)
% Provede vypocet parametru primky

[~,n] = size(y); 

k = (n .* sum(x .* y) - sum(x) .* sum(y)) / ...
    (n .* sum (x.^2) - sum(x).^2);

y0 = (sum(x)^2 .* sum(y) - sum(x) .* sum(y .* x)) / ...
     (n .* sum (x.^2) - sum(x).^2);

end