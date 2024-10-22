% IO = [c, xp, yp] Interior Orientation
% EO = [Xc, Yc, Zc, Om, Ph, Kp] Exterior Orientation
% IP = [x, y] image point
% GP_z
% 2번 영상점에 투영된 지상점 좌표를 계산한 예시

IO = [100, 0.01, 0.02]
EO = [0, 0, 1000, 1, -1, 30]
IP = [66.459, 99.717]
GP_z = 20
P = I2G(IO,EO,IP,GP_z)