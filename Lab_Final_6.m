clc
close all
clear;

img=imread('G:\rony.jpg');
grayImg=rgb2gray(img);

[R, C] = size(grayImg);
v1 = 1/16;
v2 = 2/16;
v3 = 4/16;
for i = 2:R-1
    for j = 2:C-1
        WeightAvgFilteredImg(i, j) = grayImg(i-1, j-1)*v1 + grayImg(i-1, j)*v2 + grayImg(i-1, j+1)*v1 + grayImg(i, j-1)*v2 + grayImg(i, j)*v3 + grayImg(i, j+1)*v2 +   grayImg(i+1, j-1)*v1 + grayImg(i+1, j)*v2 + grayImg(i+1, j+1)*v1;
    end
end

figure(1)
subplot(121)
imshow(grayImg)
title('Original Image')

subplot(122)
imshow(WeightAvgFilteredImg)
title('Weighted Average Filtered Image')
