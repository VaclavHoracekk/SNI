function [geo_sum] = geometricSum(array)
%Returns the extended Pythagorean theorem value
[~,n] = size(array);

temp_sum = 0;

for i = 1:n
    temp_sum = temp_sum + array(i)^2;
end

geo_sum = sqrt(temp_sum);
end