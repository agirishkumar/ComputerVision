img1 = imread('img1.jpg');
imshow(img1);
noise=randn(size(img1)).*32;
output = img1+noise;
imshow(output);