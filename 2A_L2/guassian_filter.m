% Apply a Gaussian filter to remove noise
img = imread('img4.jpg');
imshow(img);

% TODO: Add noise to the image
noisy_sigma =25;
noise=uint8(randn(size(img)).*noisy_sigma);
noisy_img=img+noise;
imshow(noisy_img);

% TODO: Now apply a Gaussian filter to smooth out the noise
% Note: You may need to pkg load image;
% pkg load  image; uncomment this if using octave
filter_size=21;
filter_sigma=100;
filter=fspecial('Gaussian',filter_size,filter_sigma);
smoothed=imfilter(noisy_img,filter);
imshow(smoothed);
