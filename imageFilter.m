clc
close all
clear;

myImage=imread('H:\PICTURE\Photos\nurnoby\Dhaka\Class Party 6th semester\IMG_3569.JPG');
grayImg=rgb2gray(myImage);

makeNoiceImage = imnoise(grayImg, 'salt & pepper');

[R, C] = size(makeNoiceImage);
v1 = 1/16;
v2 = 2/16;
v3 = 4/16;
for i = 2:R-1
    for j = 2:C-1
        filterdImg(i, j) = makeNoiceImage(i-1, j-1)*v1 + makeNoiceImage(i-1, j)*v2 + makeNoiceImage(i-1, j+1)*v1 + makeNoiceImage(i, j-1)*v2 + makeNoiceImage(i, j)*v3 + makeNoiceImage(i, j+1)*v2 +   makeNoiceImage(i+1, j-1)*v1 + makeNoiceImage(i+1, j)*v2 + makeNoiceImage(i+1, j+1)*v1;
    end
end

figure(1)
subplot(221)
 imshow(myImage)
 title('Color Image')
 
subplot(222)
 imshow(grayImg)
 title('Gray Image')
 
subplot(223)
 imshow(makeNoiceImage)
 title('Noisy Image')
 
subplot(224)
 imshow(filterdImg)
 title('Weighted Average filtered Image')