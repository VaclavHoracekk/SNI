function [uncA] = typeAUncertainty(array)
% Calculates the type A uncertainty
[~,n] = size(array);
avg = mean(array);
coef_array = [0 7 2.3 1.7 1.4 1.3 1.3 1.2 1.2];

if n == 0 
    uncA = ~0;
    return;
elseif n >= 10
    coef = 1;
else
    coef = coef_array(n);
end

temp_sum = 0;

for i = 1:n
    temp_sum = temp_sum + (array(i) - avg)^2;
end

temp_sum = (1/(n*(n-1)))*temp_sum;

uncA = coef*sqrt(temp_sum);
end