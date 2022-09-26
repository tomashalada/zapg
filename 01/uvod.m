%%% Proměnná, přiřazení proměnné, výraz

a = 3       % vyraz neukonceny strednikem se automatiky vypisuje do konzole
b = 5;      % vyraz ukonceny strednikem se priradi, ale nevypise

disp("__________________________________________________")

c = a + b
d = a + b;
disp(d)     % pro manualni vypis do konzole souzi prikaz 'disp(@argument)'

disp("__________________________________________________")

disp( "Proměnná d: " ), disp( d )   % manuální výstup doplnění o komentář
fprintf( "Proměnná d: %d\n", d )    % formátkovaný výstup
disp("")                            % vypis prazdny radek (pro oddeleni vystupu)

d = 0.024   % prepsani hodnoty vyrazu

disp("__________________________________________________")

%% Složitějš výrazy
e = 0.01*sqrt( ( a + b ) + 1 ) + sin( pi/2 )
e = 0.01*sqrt( ( a + b ) + 1 ) + sin( deg2rad( 90 ) )
e = 0.01*( ( a + b ) + 1 )^0.5  % jiny vyraz pro mocninu (argument)^(mocnina)

disp("__________________________________________________")

f = 9 / 1*( 0.5 + 2.5 )         % pozor na poradi zavorek!
f = 9 / ( 1*( 0.5 + 2.5 ) )     % pozor na poradi zavorek!

disp("__________________________________________________")

g = 9 / 1+( 0.5 + 2.5 )         % pozor na poradi zavorek!
g = 9 / ( 1+( 0.5 + 2.5 ) )     % pozor na poradi zavorek
