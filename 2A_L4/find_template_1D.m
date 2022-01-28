function index = find_template_1D(s,t)
    %pkg load image;
    c = normxcorr2(t,s);
    [maxValue rawIndex] = max(c);
    index = rawIndex - size(t,2)+1;
end