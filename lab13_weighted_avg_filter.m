clc
close all
clear;

img=imread('H:\PICTURE\my_picture.jpg');
grayImg=rgb2gray(img);

noisyImg = imnoise(grayImg, 'salt & pepper');

[R, C] = size(grayImg);
v1 = 1/16;
v2 = 2/16;
v3 = 4/16;
for i = 2:R-1
    for j = 2:C-1
        avgFilterdImg(i, j) = noisyImg(i-1, j-1)*v1 + noisyImg(i-1, j)*v2 + noisyImg(i-1, j+1)*v1 + noisyImg(i, j-1)*v2 + noisyImg(i, j)*v3 + noisyImg(i, j+1)*v2 +   noisyImg(i+1, j-1)*v1 + noisyImg(i+1, j)*v2 + noisyImg(i+1, j+1)*v1;
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
imshow(noisyImg)
title('Noisy Image')
 
subplot(122)
imshow(avgFilterdImg)
title('Weighted Average filtered Image')