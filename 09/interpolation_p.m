%n =20; k = 1:n; x = cos(pi * (2 * k - 1) / (2 * n)); y = exp(-x.^2);

n = 10; h = 6 / n; x  = -3:h:3; y = exp(-x.^2);
xx = -3:0.005:3;
yy = 0 * xx;
n = length(x);
for i = 1:n,
   lag_i = 1 + 0 * xx;
   for j = 1:n,
     if (j ~= i)
        lag_i = lag_i .* (xx - x(j)) / (x(i) - x(j));
     end
  end
  %yy3 = yy3 + y(i) * lag_i;
  yy = yy + y(i) * lag_i;
end

hold on
plot( xx, yy, 'r', "linewidth", 2  )
scatterplot = scatter( x, y, 'k', 'filled'  )
h = legend('interpolation line', 'interpolated points', "show");

grid
print -dpng lagrange_interpolation.png
