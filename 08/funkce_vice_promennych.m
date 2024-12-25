funkceDvouPromennych = @( x, y ) sin( x ) + cos(y)
[ x, y ] = meshgrid( -5: 0.1: 5 , -5: 0.1: 5  )

f_val = funkceDvouPromennych( x, y );

surf( f_val )

print -dpng fce_vice_promennych.png
