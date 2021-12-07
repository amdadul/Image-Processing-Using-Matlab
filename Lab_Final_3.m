clear;
close all;

img = imread('G:\rony.jpg');
grayImg = rgb2gray(img);

figure(1)
subplot(121)
imshow(grayImg)
title('Original Image')

subplot(122)
imhist(grayImg);
title('Histogram of Image')