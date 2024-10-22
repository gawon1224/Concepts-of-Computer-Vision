% I2G - Image Point to Ground

% input
% IO = [c, xp, yp]
% EO = [Xc, Yc, Zc, Om, Ph, Kp]
% IP = [x, y] image point
% GP_z = 지상좌표계로 표현된 지상점의 Z좌표
% output : GP = [X Y Z] -> 지상좌표계로 표현된 지상점

function GP = I2G(IO, EO, IP, GP_z)
    IO = IO/1000;   % 단위 mm -> m
    R = (pi / 180) * Rot3D (EO(4), EO(5), EO(6));   % 단위 도 -> rad

    lamda = (GP_z - EO(3)) / (IP(1)*R(1,3) + IP(2)*R(2,3) - IO(1)*R(3,3));

    GP_x = lamda*(IP(1)*R(1,1) + IP(2)*R(2,1) - IO(1)*R(3,1) + EO(1));
    GP_y = lamda*(IP(1)*R(1,2) + IP(2)*R(2,2) - IO(1)*R(1,2) + EO(2));

    GP(1) = GP_x;
    GP(2) = GP_y;
    GP(3) = GP_z;