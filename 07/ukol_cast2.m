%ukazka

f = @( x ) x .* log( x ) - 1
a = 3, b = 5, N = 10

h = ( b - a ) / N
x1_vect = [ a : h : b ]

N1 = length( x1_vect )

F1 = f( x1_vect )

S0 = h*sum( F1 )
fprintf( "---> S0: %.15f\n",  S0 )

S1 = h*sum(F1(1:end -1))
%S1 = h*sum(F1(1:N -1))
fprintf( "---> S1: %.15f\n",  S1 )

x2_vect = [ a + h / 2 : h : b ]

N2 = length( x2_vect )

F2 = f( x2_vect )

S2 = h*sum( F2 )
fprintf( "---> S2: %.15f\n",  S2 )

S = ( S1 + S2 ) / 2
fprintf( "---> S: %.15f\n",  S )

