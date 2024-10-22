%% 3번
%% 이미지의 꼭짓점 값을 임의로 주어 지상으로 투영했을 때의 좌표 구하기
% 이미지의 꼭짓점 IP가 [30, 30; 30, 100; 100,30; 100,100]라고 가정함
format long g

IO = [100, 0.01, 0.02];
EO = [0, 0, 1000, pi/180, -pi/180, pi/6];
IP = [30, 30; 30, 100; 100,30; 100,100];
IP
GP_z = 0;
GPX = [];
GPY = [];

for i = 1:4
    GP = I2G(IO,EO,IP(i,:),GP_z);
    GP
    GPX(i) = GP(1)
    GPY(i) = GP(2)
end

GPX
GPY

%% 그래프 그리기
figure;
plot(GPX, GPY,'o','MarkerFaceColor','r');
title('지상의 관측범위');
xlabel('지상의 x좌표');
ylabel('지상의 y좌표');