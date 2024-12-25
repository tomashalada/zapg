%% Meshgrid = linspace ve vice rozmerech

x_vect = y_vect = linspace (-3, 3, 50)';
[x, y] = meshgrid (x_vect, x_vect);

% Nebo ekvivalentne
%[x, y] = meshgrid ( -3 : 0.1 : 3,  -3 : 0.1 : 3);

fxy = 3*(1-x).^2.*exp(-(x.^2) - (y+1).^2) ...
   - 10*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2) ...
   - 1/3*exp(-(x+1).^2 - y.^2);

%% Zobrazeni jako sit

mesh (x, y, fxy );
print -dpng plot_mesh.png

%% Zobrazeni jako plosky

surf ( fxy );
print -dpng plot_surf.png

%% Zobrazeni interpolovane plochy:

surfl( x, y, fxy )
colormap( jet )     % barevne schema
shading interp      % interpolace barev na danou plochu

print -dpng plot_interpolate.png

%% Zobrazeni kontur:

contour( fxy, 16, 'LineWidth', 3 )
colormap jet        % barevne schema

print -dpng plot_countour.png

%: https://docs.octave.org/v4.2.0/Three_002dDimensional-Plots.html
%: https://www.mathworks.com/help/matlab/visualize/creating-3-d-plots.html

%% Plot jako lambda funkce
% ... zatim nefunguje v octave (mozna lze stahnout jako modul)

%: f = @( x, y ) 3*(1-x).^2.*exp(-(x.^2) - (y+1).^2) ...
%:    - 10*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2) ...
%:    - 1/3*exp(-(x+1).^2 - y.^2)
%:
%: fimplicit3( f )
%:
%: print -dpng plot_fimplicit.png
