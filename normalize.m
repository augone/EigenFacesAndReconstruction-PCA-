function X = normalize(X) 

    [m, n] = size(X);
    %miu = mean(X, 2);
    for i = 1:m
        miu = mean(X(i, :));
        X(i, :) = X(i, :) - miu;
    end

