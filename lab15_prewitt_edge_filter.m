clc
close all
clear;

img=imread('H:\PICTURE\my_picture.jpg');
grayImg=rgb2gray(img);

preGx = [-1 -1 -1; 0 0 0; 1 1 1];
preGy =  [-1 0 1;-1 0 1; -1 0 1];

[R, C] = size(grayImg);

for i = 2:R-1
    for j = 2:C-1
        prewittImgGx(i, j) =  grayImg(i-1, j-1)*preGx(1,1) + grayImg(i-1, j)*preGx(1,2) +  grayImg(i-1, j+1)*preGx(1,3)+ grayImg(i, j-1)*preGx(2,1) + grayImg(i, j)*preGx(2,2) +  grayImg(i, j+1)*preGx(2,3)+ grayImg(i+1, j-1)*preGx(3,1) + grayImg(i+1, j)*preGx(3,2) +  grayImg(i+1, j+1)*preGx(3,3);
        prewittImgGy(i, j) =  grayImg(i-1, j-1)*preGy(1,1) + grayImg(i-1, j)*preGy(1,2) +  grayImg(i-1, j+1)*preGy(1,3)+ grayImg(i, j-1)*preGy(2,1) + grayImg(i, j)*preGy(2,2) +  grayImg(i, j+1)*preGy(2,3)+ grayImg(i+1, j-1)*preGy(3,1) + grayImg(i+1, j)*preGy(3,2) +  grayImg(i+1, j+1)*preGy(3,3);
    end
end

prewittImg = prewittImgGx + prewittImgGy;

figure(1)
subplot(221)
imshow(grayImg)
title("Original Image");

subplot(222)
imshow(prewittImgGx)
title("prewittImgGx Image");

subplot(223)
imshow(prewittImgGy)
title("prewittImgGy Image");

subplot(224)
imshow(prewittImg)
title("prewittImg Image");
