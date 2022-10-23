1;

% function (vystupy) = NAZEV(vstupni argumenty)

function [cislo, vektor] = moje_funkce(a, b, X)
  cislo = mean(X);
  vektor = X*(a + b*cislo);
end

z = [1:2:10]
[vystupCislo, vystupVektor] = moje_funkce( 0.3, 2, z )

