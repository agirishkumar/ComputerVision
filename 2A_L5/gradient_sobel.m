img = double(rgb2gray(imread('octagon.jpeg')))/255;
%compute x,y gradients
[gx, gy] = imgradientxy(img,'sobel');

%to get gradient magnitude and direction
[gmag, gdir] = imgradient(gx,gy);

%imshow((gdir+180.0)/360.0);
my_grad = select_gdir(gmag, gdir, 1, 30, 60); % 45 +/- 15


% show images
%figure(1, 'position',[100,100,size(img)(2)*2.5,size(img)(1)]);

subplot(1,3,1);
imshow(img) % assumes [0, 1] range for double images
title("Gray Image");
subplot(1,3,2);
imshow((gdir+180.0)/360.0) % assumes [0, 1] range for double images
title("Gradient magnitude and direction");
subplot(1,3,3);
imagesc(my_grad);
axis('off');
colormap gray;
title("45 Degrees Gradient");