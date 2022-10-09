%% MANIPULACE S VEKTORY A MATICEMI

% ZOPAKUJTE SI:
% cviceni 1 - vektory_matice.m

% ukazkovy vektor
x = [3, 4, 8, 9, 13, 45, 16, 18, 16, 3, 4, 5, 78 ,3, 2, 6]

x(3)                             % pristup k tretimu prvku vektoru

x([1, 3 ,4])                     % pristup k vybranym prvkum vektoru
                                 % -> vraci vektor

rozmer_vektoru_vybranych_prvku = size(x([1, 3 ,4]))

disp("__________________________________________________")

polohy_cisla_tri = find(x == 3)  % prikz find(OBEJKT (tj. vektor, matice) + podminka)
                                 % vraci POZICE vsech prvku v danem vektoru, matici,
                                 % ktere splnuji predepsanou podminku
                                 % V nasem pripade vrati pozice vsech trojek

rozmery = size(polohy_cisla_tri) % vypis velikost vektoru ktery obsahuje polohy
                                 % cila 3 ve vektoru x

for i = 1:length(polohy_cisla_tri)  % proved cyklus pres vsechny prvky vektoru pozic
  x( polohy_cisla_tri( i ) )        % vypis vypis cisla tri
end


disp("__________________________________________________")

polohy_cisla_tri                 % Zobraz vektor poloh, kde se nachazi cislo 3
x(polohy_cisla_tri)              % precti vsechny nalezena cisla tri bez for cyklu

disp("__________________________________________________")

%% MANIPULACE S VEKTORY - SKLADANI, PREPISOVANI, SPOJOVANI

M = zeros(3)                     % Vytvori nulovou matici

M(:) = 1                         % Prepise vsechny prvky matice na 1

A = 3*ones(2)                    % Vytvorme pomocnou matici 2x2 obsahujici cislo 3

disp("Matice M s prepsanym dolnim rohem:")
M(2:3, 2:3) = A                  % Prepis dolni roh pomocne matice M matici A

disp("__________________________________________________")

M(:) = 1                         % Prepis vsechny prvky matice na 1

disp("Matice M s nahrazenym radkem:")
M(2, :) = [ 4, 7, 6 ]            % Nahrad druhy radek matice M zadanym vektorem

disp("Matice M s nahrazenym sloupcem:")
M(:, 2) = [ 44, 77, 66 ]         % Nahrad druhy sloupec matice M zadanym vektorem

disp("__________________________________________________")
%DOKUMENTACE:
%help repmat

Y = repmat(2, 3, 2)               % vytvori matici o rozmerech 3x2
                                  % obsahujici pouze cislo 2 pomoci prikazu
                                  % "redmat" s argumenty @prvek k rozkopirovani
                                  %                      @velikost vyslednoho objektu

M(:) = 1                          % Prepis vsechny prvky matice na 1

M(:,:) = repmat([1, 2, 3], 3, 1)  % Prikaz "repmat" rozkopiruje zadany vektor [1,2,3]
                                  % do matice 3x3 - kopirovano po radcich
                                  % (tj. 3 opakovani v radcich,
                                  % 1 opakovani ve sloupcich)
disp("__________________________________________________")

M(:) = 1                          % Prepis vsechny prvky matice na 1

M(:,:) = repmat([1; 2;3], 1,3)    % Prikaz "repmat" rozkopiruje zadany vektor [1;2;3]
                                  % do matice 3x3 - kopirovano po sloupcich
                                  % (tj. 1 opakovani v radcich,
                                  % 3 opakovani ve sloupcich)

disp("__________________________________________________")
disp('ARRAY BROADCASTING:')


M = zeros(3)                      % Vytvor nulovou matici

M + [ 1 ,2 ,3 ]                   % broadcastig: pricitany vektor se price
                                  % KE VSEM radkum matice

M + [ 1 ,2 ,3 ]'                  % broadcastig: pricitany vektor se pricte
                                  % KE VSEM sloupcum matice (zde pricitame transpozici)

disp("__________________________________________________")

A = repmat(10, 3 , 4)             % vytvori matici o rozmerech 3x4
                                  % obsahujici pouze cisla 10 pomoci prikazu
                                  % "redmat" s argumenty @prvek k rozkopirovani
                                  %                      @velikost vyslednoho objektu

C = eye(2)                        % vytvor matici s jednickami na diagonale
B = repmat(C, 2 , 2)              % vytvor BLOKOVOU MATICI (poskladej matice C)
                                  % do matice 2x2
                                  % ... vysledkem je tedy 4x4 matice, resp. rozepsana
                                  % matice [ C, C
                                  %          C, C ]

disp("__________________________________________________")
disp('ZMENA TVARU POLE (tj. VEKTORU, MATICE)')
%DOKUMENTACE:
%help reshape

x = [1:9]                         % vytvor pomocny vektor obsahujici cisla od 1 do 9
A = reshape(x, [3,3])             % funkce "reshape" pretravuje zadane pole (v nasem
                                  % pripade vektor x) ma zadany tvar (v nasem pripade
                                  % matici 3x3)
                                  % @prvni_argumtn - vstupni pole (vektor, matice)
                                  % @druhy_argumtn - vysledny tvar

                                  % POZOR! Pocty prvku vstupniho pole musi odpovidat
                                  % poctu prvku vysledneho objektu.

disp("__________________________________________________")

x = [1:10]                        % vytvor pomocny vektor obsahujici cisla od 1 do 10
A = reshape(x, [5,2])             % funkce "reshape" pretravuje zadane pole (v nasem
                                  % pripade vektor x) ma zadany tvar (v nasem pripade
                                  % matici 5x2)
                                  % @prvni_argumtn - vstupni pole (vektor, matice)
                                  % @druhy_argumtn - vysledny tvar

disp("__________________________________________________")
% pozn. Pracovat lze i s vicerozmernymi poly, nejenom pouze s vektory (1D pole) ci maticemi (2D pole)

B = rand(2, 2, 3)                 % vytvori trirozmerny objekt nahodnych hodnot

C = reshape(B, 2, 6)              % premapuje 3D objekt hodnot B na matici o
                                  % rozmerech 2x6


