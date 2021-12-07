clear;
close all;

img = imread('H:\PICTURE\my_picture.jpg');
grayImg = rgb2gray(img);

threshold = input('Enter the threshold value: ');

[R, C] = size(grayImg);
for i =1 : R
    for j = 1 : C
        if (grayImg(i, j) > threshold)
            bin_img(i, j) = 1;
            inv_bin_img(i, j) = 0;
        else
            bin_img(i, j) = 0;
            inv_bin_img(i, j) = 1;
        end
    end
end


figure(1)
imshow(bin_img)
title('Binary on hand')
impixelinfo()

figure(2)
imshow(inv_bin_img)
title('Inverse Binary on hand')
impixelinfo()