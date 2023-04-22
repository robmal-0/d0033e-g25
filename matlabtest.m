% load all figures
filename = 'train-final.csv';
M = readmatrix('train-final.csv');

% load one example of each pose
% filename = 'train-unique.csv';
% M = readmatrix('train-unique.csv');

startFigure = 1; % what figure will be printed 276

x = M(startFigure, 1);
y = M(startFigure, 2);
z = M(startFigure, 3);

amountOfData = 50; % how many gestures will be loaded

i = 4;
g = startFigure;

while g < amountOfData+startFigure
    while i < 60
        x = [x, M(g, i)];
        y = [y, M(g, i+1)];
        z = [z, M(g, i+2)];
        i = i + 3;
    end
    g = g + 1;
    i = 1;
end


ptCloud = pointCloud([x(:), y(:), z(:)]);

pointscolor=uint8(zeros(ptCloud.Count,3));
pointscolor(:,1)=255;
pointscolor(:,2)=255;
pointscolor(:,3)=51;

ptCloud.Color = pointscolor;
pcshow(ptCloud);
xlabel("X")
ylabel("Y")
zlabel("Z")

hold on;

tmp = 1;
lim = 8;
i = 1;

while i < amountOfData+1
    line([x(tmp),x(tmp+1)], [y(tmp),y(tmp+1)], [z(tmp),z(tmp+1)]);
    line([x(tmp+1),x(tmp+2)], [y(tmp+1),y(tmp+2)], [z(tmp+1),z(tmp+2)])
    
    line([x(tmp+1),x(tmp+10)], [y(tmp+1),y(tmp+10)], [z(tmp+1),z(tmp+10)])
    line([x(tmp+10),x(tmp+11)], [y(tmp+10),y(tmp+11)], [z(tmp+10),z(tmp+11)])
    line([x(tmp+11),x(tmp+12)], [y(tmp+11),y(tmp+12)], [z(tmp+11),z(tmp+12)])
    
    tmp = tmp + 1;
    while tmp < lim
        line([x(tmp),x(tmp+2)], [y(tmp),y(tmp+2)], [z(tmp),z(tmp+2)])
        line([x(tmp+1),x(tmp+3)], [y(tmp+1),y(tmp+3)], [z(tmp+1),z(tmp+3)])
        tmp = tmp + 1;
    end
    
    tmp = tmp + 4;
    while tmp < lim+10
        line([x(tmp),x(tmp+2)], [y(tmp),y(tmp+2)], [z(tmp),z(tmp+2)])
        line([x(tmp+1),x(tmp+3)], [y(tmp+1),y(tmp+3)], [z(tmp+1),z(tmp+3)])
        tmp = tmp + 1;
    end
    
    tmp = tmp + 3;
    lim = lim + 20;
    i = i + 1;
end

% line([x(3),x(5)], [y(3),y(5)], [z(3),z(5)])
% line([x(5),x(7)], [y(5),y(7)], [z(5),z(7)])
% line([x(7),x(9)], [y(7),y(9)], [z(7),z(9)])
% line([x(2),x(4)], [y(2),y(4)], [z(2),z(4)])
% line([x(4),x(6)], [y(4),y(6)], [z(4),z(6)])
% line([x(6),x(8)], [y(6),y(8)], [z(6),z(8)])
% line([x(8),x(10)], [y(8),y(10)], [z(8),z(10)])
% 
% line([x(13),x(15)], [y(13),y(15)], [z(13),z(15)])
% line([x(15),x(17)], [y(15),y(17)], [z(15),z(17)])
% line([x(17),x(19)], [y(17),y(19)], [z(17),z(19)])
% line([x(12),x(14)], [y(12),y(14)], [z(12),z(14)])
% line([x(14),x(16)], [y(14),y(16)], [z(14),z(16)])
% line([x(16),x(18)], [y(16),y(18)], [z(16),z(18)])
% line([x(18),x(20)], [y(18),y(20)], [z(18),z(20)])

grid on;
%plot(x, y, 'o');
hold off;
%clear;
