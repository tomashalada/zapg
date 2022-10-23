a = 1.3;
b = .2;
c = 30;
parabola = @(x) a*x.^2 + b*x + c;

clear a b c

disp("______________________________________________")
disp("Parabola:")

x = 1;
y = parabola( x )


clc, clear all;

disp("______________________________________________")
disp("Paraboloid:")

paraboloid = @(x,y) (x^2 + y^2 + x*y);

z = paraboloid( 1, 1 )
