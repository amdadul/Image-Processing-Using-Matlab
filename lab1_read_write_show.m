img = imread('H:\PICTURE\my_picture.jpg','jpg');
figure(1)
imshow(img)
title('This is color Image')
impixelinfo()

gryImg = rgb2gray(img);
figure(2)
imshow(gryImg)
title('This is gray Image')
impixelinfo()

figure(3)
subplot(121)
imshow(img)
title('This is color Image')
subplot(1,2,2)
imshow(gryImg)
title('This is gray Image')

imwrite(gryImg,'H:\PICTURE\my_gray_picture.jpg','jpg')