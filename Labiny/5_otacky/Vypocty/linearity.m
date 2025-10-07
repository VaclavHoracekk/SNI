function [linearity] = linearity(measured_array, aprox)
    aprox_min = aprox(1);
    aprox_max = aprox(end);

    linearity = abs((measured_array-aprox)/(aprox_max-aprox_min));
end