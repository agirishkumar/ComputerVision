% pkg load image; 

img = imread('leaves.jpg');

filter_size=21;
filter_sigma=20;
filter = fspecial('gaussian',filter_size,filter_sigma);

smoothed1=imfilter(img,filter,0);
smoothed2=imfilter(img,filter,'circular');
smoothed3=imfilter(img,filter,'replicate');
smoothed4=imfilter(img,filter,'symmetric');
subplot(2,3,1), imshow(img)
title('original') 
subplot(2,3,2), imshow(smoothed1)
title('clip filter') 
subplot(2,3,3), imshow(smoothed2)
title('wrap filter') 
subplot(2,3,4), imshow(smoothed3)
title('copy edge filter') 
subplot(2,3,5), imshow(smoothed4)
title('Reflect across edge filter') 
