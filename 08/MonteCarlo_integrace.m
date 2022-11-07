%% Funkce urcena k integraci

mojeFunkce = @(x) x.^2
% integral na intervalu [ 0 : 1 ] je 1/3 ( tj. 0.333... )

x_vect = [ 0 : 0.01 : 1 ]
f_vect = mojeFunkce(x_vect)

%% Zobrazeni funkce

hold on
plot(x_vect, f_vect, 'k', 'LineWidth',2)
grid on
hold off
print -dpng funkce_monte_carlo.png

N = 20000
xrand = rand(N, 1);
yrand = rand(N, 1);

% ... pripadne lze pracovat i s nahodnou matici
% Mrandom = rand( N )

hold on
scatter( xrand, yrand , 'b', 'filled')
plot(x_vect, f_vect, 'k', 'LineWidth',2)
grid on
print -dpng funkce_monte_carlo_body.png

pocetBoduPodKrivou = 0

for i = [ 1 : N ]
  if yrand( i ) < mojeFunkce( xrand( i ) )
    pocetBoduPodKrivou = pocetBoduPodKrivou + 1;
  end
end

pocetBoduPodKrivou

velikostOblasti = 1;

odhadIntegralu = velikostOblasti * ( pocetBoduPodKrivou / N)
disp(odhadIntegralu)
