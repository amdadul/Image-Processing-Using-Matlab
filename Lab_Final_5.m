clear;
close all;

img = imread('G:\rony.jpg');
grayImg = rgb2gray(img);

[R, C] = size(grayImg);
for i =1 : R
    for j = 1 : C
        if (grayImg(i, j) > 127)
            bin_img(i, j) = 1;
        else
            bin_img(i, j) = 0;
        end
    end
end

doubleImg = im2double(bin_img);
c = 1.25;

for i =1 : R
    for j = 1 : C
        logImg(i, j) = c * log(1 + doubleImg(i, j));
    end
end

imwrite(logImg,'H:\PICTURE\logarithmic_image_rony.tiff','tiff')

figure(1)
subplot(131)
imshow(grayImg)
title('Original Image')

subplot(132)
imshow(bin_img)
title('Binary Image')

subplot(133)
imshow(logImg)
title('Logarithmic Image')

