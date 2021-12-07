clear;
close all;

img = imread('H:\PICTURE\my_picture.jpg');
gray_img = rgb2gray(img);
figure(1)
imshow(gray_img)
title('Gray Scale Image')
impixelinfo()

figure(2)
bin_img = imbinarize(gray_img);
imshow(bin_img)
title('Binary using function')
impixelinfo()

%%
[R, C] = size(gray_img);
for i =1 : R
    for j = 1 : C
        if (gray_img(i, j) > 127)
            binh_img(i, j) = 1;
        else
            binh_img(i, j) = 0;
        end
    end
end
figure(3)
imshow(binh_img)
title('Binary Without function')
impixelinfo()