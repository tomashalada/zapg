% Z 1D zname funkci linspace:

x_linspace = linspace( 0, 2, 5 )
x_linspace2  = [ 0 : 0.5 : 2 ]

% Pro vice rozmeru:

[ x, y ] = meshgrid ( 0 : 0.5 : 2,  0 : 0.5 : 2 )

x_vect = y_vect = linspace (0, 2, 5)
[x, y] = meshgrid ( x_vect, x_vect )
