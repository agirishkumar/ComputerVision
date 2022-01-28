 tablet = imread('tablet.png');
 glyph = tablet(75:165, 150:185);
 [y x] = find_template_2D(glyph, tablet)
 figure, imshow(tablet);
 hold on;
 rectangle('Position',[x, y, 35, 90],'Edgecolor','r', 'Linewidth',3);
 