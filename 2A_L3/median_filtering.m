img = rgb2gray(imread('moon.jpg'));
noisy_img = imnoise(img,'salt & pepper', 0.05);
median_filter = medfilt2(noisy_img);
subplot(1,3,1), imshow(img)
title('original') 
subplot(1,3,2), imshow(noisy_img)
title('Salt & Pepper noise') 
subplot(1,3,3), imshow(median_filter)
title('Median filter') 