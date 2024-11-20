x = [ -2  -1   0   1      2];
y = [  1  0.5  0   -0.6  -2];

xx = -2:0.005:2;

k = find(xx >= x(1) & xx <= x(2));
yy = zeros(size(xx,1),size(xx,2));

h = x(2) - x(1)
yy(k) = y(1) + (y(2) - y(1)) * (xx(k) - x(1)) / h;

yy2 = interp1(x, y, xx, 'linear');

hold on
plot( xx, yy2, 'r', "linewidth", 2  )
scatterplot = scatter( x, y, 'k', 'filled'  )
h = legend('interpolation line', 'interpolated points', "show");

grid
print -dpng linear_interpolation.png
