clear;
close all;

i = imread('H:\PICTURE\my_picture.jpg');
figure(1)
imshow(i);
title('Color Image')

figure(2)
imagesc(i(:, :,1));
title('Red')

figure(3)
imagesc(i(:, :, 2));
title('Green')


figure(4)
imagesc(i(:, :, 3));
title('Blue')