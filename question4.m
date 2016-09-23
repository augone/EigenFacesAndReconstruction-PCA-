clear
matrix = readImageFromFile;%5100 * 800
normalM = normalize(matrix);
M = normalM(:, 2:800);
[m, n] = size(M);
sig = sigma(M);
[U, R] = eig(sig);
V = zeros(m, n);
for i = 1 : n
    V(:,n + 1 - i) =  (R(i,i)) ^ (-1/2) * M * U(:,i);
end
figure(2);
temp = matrix(:,1)' * V(:,1:173) * V(:,1:173)';
showEigenfaces(temp, 60);
figure(3);
showEigenfaces(matrix(:,1)', 60);
