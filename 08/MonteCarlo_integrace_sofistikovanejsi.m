%% Funkce urcena k integraci

mojeFunkce = @(x) x.^2
% integral na intervalu [ 0 : 1 ] je 1/3 ( tj. 0.333... )

%% Vstupni interval
a = 0; b = 1;

N = 2000

xrand = a + ( b - a ) * rand( N, 1 );
odhadIntegralu = ( b - a ) * sum( mojeFunkce( xrand ) ) / N;

odhadIntegralu
