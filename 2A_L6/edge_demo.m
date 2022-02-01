lena = imread('Lenna.png');
lena_mono = rgb2gray(lena);
figure,imshow(lena),title('Original image');
figure,imshow(lena_mono),title('Grayscale image');
h = fspecial('gaussian', [11 11],4);
figure, surf(h),title('Gaussian filter');
lena_smooth = imfilter(lena_mono,h);
figure,imshow(lena_smooth),title('Smoothed image');
