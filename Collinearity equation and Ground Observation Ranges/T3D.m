% T3D - 3D Coordinate Transformation
% Translation and Rotation
function Q = T3D(P, T, A)

R = Rot3D (A(1), A(2), A(3));

Q = R * P + T;