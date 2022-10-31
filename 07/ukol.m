%ukazka

f = @( x ) x .* log( x ) - 1

x_vect = [ 0 : 0.01 : 2 ];


%fplot( f, [0, 2] )
hold on
plot( x_vect, f(x_vect) )
line ([0 2], [0 0], "linestyle", "-", "color", "b");
grid on
hold off
legend('{\fontsize{32} f(x)}')

print -dpng f.png

presnost = 0.001;

a = 1.5; b = 2;

fa = f(a), fb = f(b)

if fa * fb > 0
    disp( "Na zadanem intervalu neexistuje reseni.")
end

iterace = 0;

x = ( a + b ) / 2
f_val = f( x )

%while ( abs( b - a ) >= presnost )
while ( abs( b - a ) >= presnost ) & (abs(f_val) >= presnost )

  x = ( a + b ) / 2
  f_val = f( x )

  if fa * f_val <= 0

    b = x

  else

    a = x

  end

  disp( x )
  fprintf("---> x: %.8f\n",  x)
  iterace = iterace + 1;
  fprintf("---> iteraci: %d\n", iterace)

end

