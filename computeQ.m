function q = computeQ(R, percent)
    n = size(R,1);
    eigenValues = zeros(1, n);
    for i = 1 : n 
        eigenValues(n + 1 - i) = R(i,i);
    end
    target = percent * sum(eigenValues);
    current = 0;
    q = 0;
    while (current < target) 
        q = q + 1;
        current = current + eigenValues(q);
    end