%pkg load image;
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];
disp('Signal:'),disp([1:size(s,2);s]);
disp('Template:'), disp([1:size(t,2);t]);

index = find_template_1D(s,t);
disp('Index:'),disp(index);