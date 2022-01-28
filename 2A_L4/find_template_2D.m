function [yIndex xIndex] = find_template_2D(template, img)

   % pkg load image;

    c = normxcorr2(template, img);

    [value, index] = max(c);
    [colVal, colIndex] = max(value);
    rowIndex = index(colIndex);

    yIndex = rowIndex - size(template, 1) + 1;
    xIndex = colIndex - size(template, 2) + 1;

end