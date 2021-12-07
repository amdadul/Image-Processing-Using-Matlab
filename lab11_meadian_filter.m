clc
close all
clear;

img=imread('H:\PICTURE\my_picture.jpg');
grayImg=rgb2gray(img);

noisyImage = imnoise(grayImg, 'salt & pepper');

filteredImg = medfilt2(noisyImage);
 
 figure(1)
 subplot(121)
 imshow(img)
 title('Color Image')
 
subplot(122)
 imshow(grayImg)
 title('Gray Image')
 
 figure(2)
subplot(121)
 imshow(noisyImage)
 title('Noisy Image')
 
 subplot(122)
 imshow(filteredImg)
 title('Meadian filtered Image')