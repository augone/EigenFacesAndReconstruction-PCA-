function matrix = readImageFromFile()
    srcFiles = dir('AR-m1\*.bmp');  % the folder in which ur images exists
    m = size(srcFiles, 1);
    matrix = zeros(85 * 60, m);


    for i = 1 : length(srcFiles)
        filename = strcat('AR-m1\',srcFiles(i).name);
        currentImage = imread(filename);
        temp = rgb2gray(currentImage);
        matrix(:,i) = reshape(temp, 85 * 60, 1);
    end

%displayData(a(1:100, :), 60);
    
%     currentImage = imread('AR-m1\AR-m1\M-001-01.bmp');
%     temp = rgb2gray(currentImage);