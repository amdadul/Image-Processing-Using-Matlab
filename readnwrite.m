img = imread("H:\PICTURE\Photos\nurnoby\Dhaka\Class Party 6th semester\IMG_3569.JPG");
g_img = rgb2gray(img);

figure(1);
subplot(221);
imshow(img);
title('This is color Image')
impixelinfo();

subplot(222);
imshow(g_img);
title('This is Gray Image')
impixelinfo();

%%
[R, C] = size(g_img);

for i =1 : R
    for j = 1 : C
        if (g_img(i, j) > 127)
            bin_img(i, j) = 1;
            neg_bin_img(i, j) = 0;
        else
            bin_img(i, j) = 0;
            neg_bin_img(i, j) = 1;
        end
    end
end

subplot(223);
imshow(bin_img);
title('This is binary Image')
impixelinfo();

subplot(224);
imshow(neg_bin_img);
title('This is negative binary Image')
impixelinfo();