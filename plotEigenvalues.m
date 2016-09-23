function plotEigenvalues(R)
    n = size(R,1);
    eigenValues = zeros(1, n);
    for i = 1 : n 
        eigenValues(n + 1 - i) = R(i,i);
    end
    figure(5);
%     semilogy(1:n, eigenValues, 'r');  
    plot(1:n, log10(eigenValues), 'r');
    ylim([5,10]);
    %figure(6);
    %bode(eigenValues);
    title('eigen values graph');
    xlabel('dimentions ');
    ylabel('magnitude 10^');
    
    figure(6);
    totalEnergy = sum(eigenValues);
    energy = zeros(1,n);
    energy(1) = eigenValues(1);
    for i = 2:n
        energy(i) = energy(i - 1) + eigenValues(i);
    end
    plot(energy/totalEnergy);
    title('Energy accumulation');
    xlabel('dimentions ');
    ylabel('energy percentage in 1 scale');