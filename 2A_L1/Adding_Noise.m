img = imread('img1.jpg');
disp(class(img));
noise_sigma = 10;
noise = randn(size(img)).*noise_sigma;
disp(class(noise));
Y=uint8(noise);
disp(class(Y));
noise_img = Y+img;
imshow(noise_img);