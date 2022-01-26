img1 = imread('img1.jpg');
img2 = imread('img2.jpg');

result = blend(img1,img2,0.75);
imshow(result);