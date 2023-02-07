function [sx, sy] = third_order(x,y,t)

matrix = [-1 3 -3 1; 3 -6 3 0 ; -3 3 0 0; 1 0 0 0];

sx = zeros(1, length(t));
sy = zeros(1, length(t));

for i= 1:length(t)
    sx(i) = [t(i).^3 t(i).^2 t(i) 1] * matrix * x;
    sy(i) = [t(i).^3 t(i).^2 t(i) 1] * matrix  * y;
end

plot(sx, sy, "k", 'LineWidth',1)
hold on 
scatter(x,y,'cyan','filled')
plot(x,y,'g')
axis equal