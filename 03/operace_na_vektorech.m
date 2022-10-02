%% Prikazy zakladni statistiky, histogram, funkce find

x = rand( 3, 1 )                % vytvori vektor nahodnych cisel o velikosti 3
X = rand( 3 )                   % vytvori matici nahodnych cisel o rozmerech 3x3

disp("__________________________________________________")

x = rand( 100, 1 );             % vytvori vektor nahodnych cisel o velikosti 100

x_prumer = mean(x)              % urci prumernou hodnotu vektoru x
x_prumer = std(x)               % urci standardni odchulku velktoru x

x = ( x-mean( x ) )/std( x );   % pomocny vypocet, normovani dat

pocetSloupcu = 20;
hist(x, pocetSloupcu);          % vytvori histogram dat x, argument @pocetSloupcu
                                % udava, do kolika sloupcu budou data rozdelena
                                % POZNMKA: ve smyslu popisek se s histogramem naklada
                                %          stejne, jako s klasickym plotem

print -dpng hist.png            % ulozi obrazek grafu (posledniho plotu) ve formatu
                                % png s nazvem hist.png

disp("__________________________________________________")

x_min = min(x)                  % najdi nejmensi prvek vektoru x
x_median = median(x)            % najdi median vektoru x

%%% Prikazy zakladni statistiky

%min	    % Minimum elements of an array
%mink	    % Find k smallest elements of array
%max	    % Maximum elements of an array
%maxk	    % Find k largest elements of array
%bounds	    % Minimum and maximum values of an array
%topkrows	% Top rows in sorted order
%mean	    % Average or mean value of array
%median	    % Median value of array
%mode	    % Most frequent values in array
%std	    % Standard deviation
%var	    % Variance
%rms	    % Root-mean-square value

disp("__________________________________________________")

%%FIND

% ukazkovy vektor
x = [3, 4, 8, 9, 13, 45, 16, 18, 16, 3, 4, 5, 78 ,3, 2, 6]

disp("__________________________________________________")

polohy_cisla_tri = find(x == 3)  % prikz find(OBEJKT (tj. vektor, matice) + podminka)
                                 % vraci POZICE vsech prvku v danem vektoru, matici,
                                 % ktere splnuji predepsanou podminku
                                 % V nasem pripade vrati pozice vsech trojek

rozmery = size(polohy_cisla_tri) % vypis velikost vektoru ktery obsahuje polohy
                                 % cila 3 ve vektoru x

for i = 1:size(polohy_cisla_tri)(2) % proved cyklus pres vsechny prvky vektoru pozic
  x( polohy_cisla_tri( i ) )        % vypis vypis cisla tri
end

disp("__________________________________________________")

polohy_cisel_mensich_nez_deset = find(x < 10) % najdi ve vektoru x polohy vsech
                                              % cisel ktera jsou mensi nez 10

polohy_cisel_vetsichRovnych_nez_deset = find(x >= 10) % najdi ve vektoru x polohy
                                                      % mensich ci rovnych cisel
                                                      % k cislu 10

disp("__________________________________________________")

polohy_sudych_cisel = find( rem(x , 2) == 0 ) % najdi ve vektoru x vsechna suda cisla
                                              % prikaz rem(@cislo, @delitel) urcuje
                                              % zbytek po ciselnem deleni
                                              % je-li cislo sude, zbytek po deleni
                                              % dvojkou je nula

for i = 1:size(polohy_sudych_cisel)(2)        % cyklus v delce rozmeru vektoru poloh
                                              % sudych cisel

  x( polohy_sudych_cisel( i ) )               % vypis nalezena suda cisla

% POZOR! Cyklus probiha pres prvky vektoru polohy_sudych_cisel. Jednotlive prvky vektoru
%        polohy_sudych_cisel obsahuji POZICE sudych sicel ve vektoru x. Prikaz
%        "polohy_sudych_cisel( i )" nam vrati pouze polohu sudeho cisla ve vektoru x, pro
%        zobrazeni daneho sudeho cisla musime tedy "precist" danou pozici vektoru x,
%        tedy "x( polohy_sudych_cisel ( i ) )".

end

disp("__________________________________________________")

polohy_lichych_ciesel = find( rem(x , 2) != 0 ) % najdi ve vektoru x vsechan licha cisla
                                              % prikaz rem(@cislo, @delitel) urcuje
                                              % zbytek po ciselnem deleni
                                              % je-li cislo sude, zbytek po deleni
                                              % dvojkou neni nula

for i = 1:size(polohy_sudych_cisel)(2)        % cyklus v delce rozmeru vektoru poloh
                                              % sudych cisel
  x( polohy_sudych_cisel( i ) )

% POZOR! Viz poznamka u predchoziho bloku (nalezeni sudych cisel).

end

disp("__________________________________________________")

% Vytvor ukazkovou matici a modifikuj nekolik prvku
X = zeros(3)
X( 1, 1 ) = 4;
X( 3, 1 ) = 7;
X( 2, 2 ) = 2;
X( 1, 3 ) = 4;

X                                     % Modifikovana matice

nenulove_prvky_matice_X = find(X)     % Samotny prikaz "find(@matice NEBO @vektor)" bez specifikovane
                                      % podmninky najde polohy vsech nenulovych prvku zadaneho objekta


