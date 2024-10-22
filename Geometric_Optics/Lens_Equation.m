function img_loc = Lens_Equation(obj_loc, focal_length)

img_loc = focal_length * obj_loc ./ ( obj_loc + focal_length);
