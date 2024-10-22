clc
clear
close all

fid = fopen('lens_info.txt', 'r');

obj_loc = sscanf(fgets(fid), '%d');
obj_loc_tmp = obj_loc;

obj_loc_10 = (-10:0.01:10);
obj_loc_10_tmp = obj_loc_10;

no_lens = sscanf(fgets(fid), '%d');

focal_length = zeros(no_lens,1);
lens_loc = zeros(no_lens,1);
img_loc = zeros(no_lens,1);

for n = 1:no_lens
    lens_loc(n) = sscanf(fgets(fid), '%d');
    focal_length(n) = sscanf(fgets(fid), '%d');
    
    s = -(lens_loc(n) - obj_loc_tmp);
    img_loc(n) = lens_loc(n) + Lens_Equation(s, focal_length(n));
    obj_loc_tmp = img_loc(n);
    
    s_10 = -(lens_loc(n) - obj_loc_10_tmp);
    img_loc_10 = lens_loc(n) + Lens_Equation(s_10, focal_length(n));
    obj_loc_10_tmp = img_loc_10;
end
fclose(fid);

plot(obj_loc_10, img_loc_10, 'r-')
grid on
xlabel('object location [m]')
ylabel('image location [m]')
title('Geometric Optics')
xlim = get(gca, 'XLim');
