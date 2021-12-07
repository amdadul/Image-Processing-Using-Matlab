clc
close all
clear;

img=imread('H:\PICTURE\my_picture.jpg');
grayImg=rgb2gray(img);

nImg = imnoise(grayImg, 'salt & pepper');

[R, C] = size(grayImg);
v = 1/9;
for i = 2:R-1
    for j = 2:C-1
        avgFilterdImg(i, j) = nImg(i-1, j-1)*v + nImg(i-1, j)*v + nImg(i-1, j+1)*v + nImg(i, j-1)*v + nImg(i, j)*v + nImg(i, j+1)*v + nImg(i+1, j-1)*v + nImg(i+1, j)*v + nImg(i+1, j+1)*v;
    end
end

figure(1)
subplot(121)
imshow(img)
title('Color Image')
 
subplot(122)
imshow(grayImg)
title('Gray Image')
 
figure(2)
subplot(121)
imshow(nImg)
title('Noisy Image')
 
subplot(122)
imshow(avgFilterdImg)
title('Average filtered Image')