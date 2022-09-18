### Proměnná, přiřazení proměnné, výraz

a = 3
b = 5

print("a = ", a)
print("b = ", b)

c = a + b
d = a + b
print(d)

print( "Proměnná d:", d )
print( f"Proměnná d: {d}\n" )

d = 0.024
print( "d = ", d , "\n")

## Složitějš výrazy
import numpy as np

e = 0.01*np.sqrt( ( a + b ) + 1 ) + np.sin( np.rad2deg( np.pi/2 ) )

f = 9 / 1*( 0.5 + 2.5 )         # pozor na poradi zavorek!
print( "f = ", f, " určeno výrazem: f = 9 / 1*( 0.5 + 2.5 )" )
f = 9 / ( 1*( 0.5 + 2.5 ) )     # pozor na poradi zavorek!
print( "f = ", f, " určeno výrazem: f = 9 / ( 1*( 0.5 + 2.5 ) )" )

g = 9 / 1+( 0.5 + 2.5 )         # pozor na poradi zavorek!
print( "g = ", g, " určeno výrazem: g = 9 / 1*( 0.5 + 2.5 )" )
g = 9 / ( 1+( 0.5 + 2.5 ) )     # pozor na poradi zavorek
print( "g = ", g, " určeno výrazem: g = 9 / ( 1+( 0.5 + 2.5 ) )" )
