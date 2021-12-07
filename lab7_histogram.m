clc;
clear all;
close all;

i = imread('H:\PICTURE\my_picture.jpg');
grayImage=rgb2gray(i);
figure(1);
subplot(1,2,1);
imshow(grayImage);
title('Image');

subplot(1,2,2);
imhist(grayImage);
title('Histogram');

[M,N]=size(grayImage);
frequency=1:256;
count=0;
for pixel=1:256
    for i=1:M
        for j=1:N            
            if grayImage(i,j)== pixel-1
                count=count+1;
            end
        end
    end
    frequency(pixel)=count;
    count=0;
end
figure(2);
stem(0:255,frequency); 
grid on;
ylabel('Frequency -->');
xlabel('intensity levels -->');
title('HISTOGRAM OF THE IMAGE')