x = [-1, -0.5, 0, 0.5, 1]
y = [-1.6781, 0.3151, 1.1051, 1.9512, 2.5884]

plot(x, y, 'ok', 'LineWidth',5)
grid on
print -dpng linearni_funkce_body.png

A = [ 5, 0;
      0, 2.5];

b = [ sum(y), sum(y.*x) ]

koef = A \b'
linearni_funkce = @(x) koef(1) + koef(2)*x

x_p = [x(1) : 0.01 : x(end)];

hold on
plot(x, y, 'ok')
plot(x_p, linearni_funkce(x_p), 'k', 'LineWidth',5)
grid on
print -dpng linearni_funkce.png

% -------------------------------------------------------------------------------

x = [-1, -0.5, 0, 0.5, 1]
y = [3, 4, 7, 18, 30]

%plot(x, y, 'ok')
%print -dpng linearni_fce.png
