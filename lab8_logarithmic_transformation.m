clc;
clear all;
close all;

img=imread('H:\PICTURE\my_picture.jpg');
[M1, N1, Z]=size(img);
grayImage=rgb2gray(img);
r = im2double(grayImage);
[M,N]=size(grayImage);
c = input('Enter the constant value for logarithomic transform: ');

for i = 1 : M
    for j = 1 : N
        s(i, j) = c * log(1 + r(i, j));
    end
end
figure(1)
imshow(s);
figure(2)
imshow(grayImage);