imgA = imread('img1.jpg');
imgB = imread('img2.jpg');
%img1 = rgb2gray(imgA);
%img2 = rgb2gray(imgB);
imgC = imgA/2 + imgB/2;
imgD = (imgA+imgB)/2;
size(imgC)
disp(isequal(imgC,imgD));
subplot(2,2,1), imshow(imgA);
subplot(2,2,2), imshow(imgB);
subplot(2,2,3), imshow(imgC);
subplot(2,2,4), imshow(imgD);