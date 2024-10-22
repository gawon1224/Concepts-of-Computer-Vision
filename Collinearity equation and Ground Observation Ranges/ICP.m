% ICP - Inverse Centeral Projection

funciton GP = ICP(GP_z, IO)

lamda = -(GP_z - IO(3))/c;

GP(1) = IO(1) * lamda;
GP(2) = IO(2) * lamda;
