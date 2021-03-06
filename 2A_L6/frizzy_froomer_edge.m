frizzy = imread('frizzy.png');
froomer = imread('froomer.png');

% Edges in frizzy and froomer
frizzy_edge = edge(rgb2gray(frizzy),'canny');
froomer_edge = edge(rgb2gray(froomer),'canny');

% TODO: Display common edge pixels
common_edge = froomer_edge & frizzy_edge;
overlap_edge = froomer_edge + frizzy_edge;

subplot(2,3,1);
imshow(frizzy);
title("frizzy Image");

subplot(2,3,2);
imshow(frizzy_edge);
title("frizzy edges");


subplot(2,3,3);
imshow(froomer);
title("froomer Image");

subplot(2,3,4);
imshow(froomer_edge);
title("froomer edges");

subplot(2,3,5);
imshow(common_edge);
title("Common edges");

subplot(2,3,6);
imshow(overlap_edge);
title("Overlapped edges");