lena = imread('Lenna.png');
lena_mono = rgb2gray(lena);
figure,imshow(lena),title('Original image');
figure,imshow(lena_mono),title('Grayscale image');
h = fspecial('gaussian', [11 11],4);
figure, surf(h),title('Gaussian filter');
lena_smooth = imfilter(lena_mono,h);
figure,imshow(lena_smooth),title('Smoothed image');
 % method 01: shift left and right, show difference
lenaL = lena_mono;
lenaL = lena_smooth;
 lenaR = lena_smooth;
 lenaR(:,[2:end]) = lenaR(:,[1:end-1]);
 lenaDiff = double(lenaR) - double(lenaL);
 figure, imshow(lenaDiff,[]),title('difference between right and left shifted images');% because there exist negetive value use imshow(img,[])
% method 2: Canny edge detector
 cannyGray = edge(lena_mono,'canny');
figure, imshow(cannyGray),title('edges in origin image');
 cannySmooth = edge(lena_smooth,'canny');
 figure, imshow(cannySmooth),title('edges in smoothed image');
% method 03: laplacian of gaussian
cannyLog = edge(lena_mono,'log');
figure, imshow(cannyLog),title('edges in laplaced image');