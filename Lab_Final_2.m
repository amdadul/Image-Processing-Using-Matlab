clear;
close all;

img = imread('G:\rony.jpg');
grayImg = rgb2gray(img);

[R, C] = size(grayImg);
for i =1 : R
    for j = 1 : C
        if (grayImg(i, j) > 127)
            inv_bin_img(i, j) = 0;
        else
            inv_bin_img(i, j) = 1;
        end
    end
end


figure(1)
subplot(121)
imshow(grayImg)
title('Original Image')

subplot(122)
imshow(inv_bin_img)
title('Inverse Binary Image')
