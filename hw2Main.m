clear;
matrix = readImageFromFile;%5100 * 800
[m, n] = size(matrix);
normalM = normalize(matrix);
sig = sigma(normalM);
[U, R] = eig(sig);
resultNum = 300;
V = zeros(m, resultNum);
for i = 1 : resultNum
    %V(:,13 - i) =  (m * R(i + 800 - resultNum, i +  800 - resultNum)) ^ (-1/2) * normalM * U(:,i +  800 - resultNum);
    V(:,resultNum + 1 - i) =  (R(i + 800 - resultNum, i +  800 - resultNum)) ^ (-1/2) * normalM * U(:,i +  800 - resultNum);
end
figure(1);
showEigenfaces(V(:,1:12)', 60);

figure(2);
temp = matrix' * V * V';
showEigenfaces(temp(1:12,:), 60);
figure(3);
showEigenfaces(matrix(:,1:12)', 60);
%%
plotEigenvalues(R);
