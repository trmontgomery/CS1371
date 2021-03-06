function [coeff] = isSeahavenReal(data, colors)
    % x vals - top row
    %y vals - bottom row
    x = data(1, :);
    y = data(2, :);
    %sum(abs(y - f(x))) < 0.00001
    order = 0;
    warning('off','all');
    coeff = polyfit(x, y, 0);
    fx = polyval(coeff, x);
    epsilon = 0.00001;
    score = sum(abs(y - fx));
    color_count = 1;
    
    %find diameter
    diameter = diff(max(x), min(x));
    %find domain
    buffer = diameter*.05;
    newx = linspace(-buffer, buffer, 1000);
    
    while score > epsilon
        order = order + 1;
        coeff = polyfit(x, y, order);
        fx = polyval(coeff, x);
        score = sum(abs(y - fx));
    end
    
    
    
end