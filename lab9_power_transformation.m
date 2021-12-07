clc;
clear all;
close all;

img=imread('H:\PICTURE\my_picture.jpg');
grayImage=rgb2gray(img);
r = im2double(grayImage);
[M,N]=size(grayImage);
c = input('Enter the constant value for power law transform: ');
gama =  input('Enter the gama value for power law transform: ');

for i = 1 : M
    for j = 1 : N
        s(i, j) = c *  r(i, j).^gama;
    end
end
figure(1)
imshow(s);
title('Power law transformed Image')
figure(2)
imshow(grayImage);
title('Original Image')