function [sx, sy] = second_order(x,y,t)

matrix = [1 -2 1; -2 2 0; 1 0 0];

sx = zeros(1, length(t));
sy = zeros(1, length(t));

for i= 1:length(t)
    sx(i) = [t(i).^2 t(i) 1] * matrix * x;
    sy(i) = [t(i).^2 t(i) 1] * matrix * y;
end

plot(sx, sy, "k", 'LineWidth',1)
hold on 
scatter(x,y,'yellow','filled')
plot(x,y,'g')
axis equal