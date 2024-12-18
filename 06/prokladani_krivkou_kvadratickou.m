x = [-1, -0.5, 0, 0.5, 1]
y = [3, 4, 7, 18, 30]

plot(x, y, 'ok', 'LineWidth',5)
grid on
print -dpng kvadraticka_funkce_body.png

A = [ 5, 0, 2.5;
      0, 2.5, 0;
      2.5, 0., 2.125;]

A_alt = [ sum(length(x)),    sum(x),       sum(x.*x),
          sum(x),    sum(x.*x),    sum(x.*x.*x),
          sum(x.*x), sum(x.*x.*x), sum(x.*x.*x.*x)]

b = [ sum(y), sum(y.*x), sum(y.*x.*x) ]

A_alt = fliplr(vander(x,3))' * fliplr(vander(x,3))
b_alt = fliplr(vander(x,3))' * y'

koef = A \b'
kvadraticka_funkce = @(x) koef(1) + koef(2)*x + koef(3)*x.*x

x_p = [x(1) : 0.01 : x(end)];


hold on
plot(x, y, 'ok')
plot(x_p, kvadraticka_funkce(x_p), 'k', 'LineWidth',5)
grid on
print -dpng kvadraticka_funkce.png
