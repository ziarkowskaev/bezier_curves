function [sx, sy] = fourth_order(x,y,t)

matrix = [1 -4 6 -4 1; -4 12 -12 4 0; 6 -12 6 0 0; -4 4 0 0 0; 1 0 0 0 0];

sx = zeros(1, length(t));
sy = zeros(1, length(t));

for i= 1:length(t)
    sx(i) = [t(i).^4 t(i).^3 t(i).^2 t(i) 1] *  matrix * x;
    sy(i) = [t(i).^4 t(i).^3 t(i).^2 t(i) 1] * matrix * y ;
end

plot(sx, sy, "k", 'LineWidth',1)
hold on 
scatter(x,y,'magenta','filled')
plot(x,y,'g')
axis equal