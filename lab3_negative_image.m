clear;
close all;

img = imread('H:\PICTURE\my_picture.jpg');
grayimg = rgb2gray(img);
max_intensity = 255;

[R, C] = size(grayimg);
for i = 1 : R
    for j = 1 : C
        negImg(i, j) = max_intensity - grayimg(i, j);
    end
end

figure(1)
subplot(1,2,1)
imshow(grayimg)
title("Gray image")

subplot(1,2,2)
imshow(negImg)
title("Negative image")
impixelinfo()