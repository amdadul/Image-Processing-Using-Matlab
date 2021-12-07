clc
close all
clear;

img=imread('H:\PICTURE\my_picture.jpg');
grayImg=rgb2gray(img);

robertImg = edge(grayImg,'Roberts');
prewittImg = edge(grayImg,'Prewitt');
cannyImg = edge(grayImg,'Canny');
figure(1)
subplot(221)
imshow(grayImg)
title('Gray Image')
subplot(222)
imshow(robertImg)
title('Roberts Image')
subplot(223)
imshow(prewittImg)
title('Prewitt Image')
subplot(224)
imshow(cannyImg)
title('Canny Image')