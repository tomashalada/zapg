%%% Definice vektor a matic a operace s nimi

b_radkovy = [ 1, 2.1, 3 ]       % radkovy vektor, prvky (sloupce) oddelene ","
b_sloupcovy = [ 1; 2.1; 3 ]     % soupcovy vektor, prvku (radky) oddelene ";"

b = b_radkovy;      % prirad do vektoru "b" vektor "b_radkovy" a nevypisuj

b( 2 )                                              % druhy prvek vektoru b
fprintf( " Druhý prvek vektoru b %d\n", b( 2 ) )    % druhy prvek vektoru b
b( 2 ) = 3.1                                        % znen druhou hodnotu vektoru b

% Pozor! Octave i Matlab indexuji pole(prvky vektoru, matic) od 1, ackoliv
%        standardne se pouziva indexovani od cisla 0

disp( "Řádkový na sloupcový: " ), b_radkovy'      % transponuj vektor pomoci prikazu "'"
disp( "Sloupcový na řádkový: " ), b_sloupcovy'    % transponuj vektor pomoci prikazu "'"

a = [1, 3, 7.2]
c = a + b                   % scitani vektoru
% error: c = a * b          % nasobeni vektoru - NEPLATNA OPERACE
c = a .* b                  % nasobeni vektoru - po prvcích
c = b_sloupcovy * b_radkovy % nasobeni vektoru - maticove [3,1]*[1,3]
c = b_radkovy * b_sloupcovy % nasobeni vektoru - maticove [1,3]*[3,1]

c = dot(b_sloupcovy , b_radkovy) % nasobeni vektoru skalarni produkt

d = [ 1.2, 3.7 ]
% error: c = a + d          % vzajemne nekompatibilni rozmer!


%% Operace s vektory

s = [ 0.6, 1, 0.0685, 78, 14, 6, 8.26]
s_sorted = sort(s)      % serad vektor p
s_maximum = max(s)      % najdi maximalni prvek ve vektoru s
s_maximum = mean(s)     % urci prumernou hodnotu vektoru s
s_maximum = std(s)      % urci standardni odchylku hodnot ve vektoru s

%% Matice

A = [ 4, -2, 0; 0,  2, 0; 0,  0, 2 ]

A = [ 4, -2,  0;
	  0,  2,  0;
	  0,  0,  2 ]

B = [ 4, -2, 0, 1; 0,  2, 0, 3; 0,  0, 2, 5 ]

Bsize = size(B)     % vypise rozmery matice B

C = zeros( 2, 2 )   % vytvor matici obsahujici pouze nuly
C = ones( 2, 4 )    % vytvor matici obsahujici pouze jednicky

diagonala = [ 8, 2.7, 3 ];
C = diag( diagonala ) % vytvor diagonalni matici se zadanou diagonalou
C = diag( 1:4 )       % vytvor diagonalni matici s prvky 1:5 na diagonale

disp("")    % vloz prazdny radek
A( 1, 2 )                                              % prvek [ 1,2 ] matice A
fprintf( " Druhý prvek vektoru b %d\n", A( 1, 2 ) )    % prvek [ 1,2 ] matice A
A( 1, 2 ) = -3                                         % zmen [ 1,2 ] hodnotu matice A

det( A )                          % zobrazi hodnotu determinant mat. A
determ_A = det( A )               % ulozi hodnotu determinant mat. A do promenne determ_A

eig( A )                          % zobrazi vlastni cisla
vl_cisla = eig( A )               % uloz vlastni cisla do promenne vl_cisla

[ vl_vekt, vl_cisla ] = eig( A )  % uloz vlastni cisla a vektory do promennych

Atransponovana = A'               % transpozice

%% Nasobeni matic

A = [ 4, -2, 0; 0,  2, 0; 0,  0, 2 ]
B = [ 1.7, 6, 2; 3.1, 5, 6; 0.2, 3, 1 ]
C = [ 1, 3, 4; 2, 1 4.2  ]
b = [ 1, 2.1, 3 ]

E = A * B           % vynasob matice - MATICOVE NASOBENI
E = A .* B          % vynasob matice PRVEK PO PRVKU

E = C * A           % vynasob matice - MATICOVE NASOBENI
% error E = A * C   % vynasob matice - maticove nasobeni - neplatna operace
E = A * C'          % vynasob matice - maticove nasobeni - transpozice

E = A * b'          % matice * vektor

x = A\b'            % vyres soustavu rovnic Ax = b

x = A\b_sloupcovy   % vyres soustavu rovnic Ax = b
x = A\b_radkovy'    % vyres soustavu rovnic Ax = b


% whos
