x = rand( 3, 1 )                % vytvori vektor nahodnych cisel o velikosti 3
X = rand( 3 )                   % vytvori matici nahodnych cisel o rozmerech 3x3

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


min(x)
median(x)


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

%%FIND

x = [3, 4, 8, 9, 13, 45, 16, 18, 16, 3, 4, 5, 78 ,3, 2, 6];

polohy_cisla_tri = find(x == 3)


size(polohy_cisla_tri)

for i = 1:size(polohy_cisla_tri)(2)
  x( polohy_cisla_tri( i ) )
end

polohy_cisel_mensich_nez_deset = find(x < 10)
polohy_cisel_vetsichRovnych_nez_deset = find(x >= 10)

polohy_sudych_cisel = find( rem(x , 2) == 0 )

for i = 1:size(polohy_sudych_cisel)(2)
  x( polohy_sudych_cisel( i ) )
end

polohy_lichych_ciesel = find( rem(x , 2) != 0 )

for i = 1:size(polohy_sudych_cisel)(2)
  x( polohy_sudych_cisel( i ) )
end

X = zeros(3)
X( 1, 1 ) = 4;
X( 3, 1 ) = 7;
X( 2, 2 ) = 2;
X( 1, 3 ) = 4;

X

nenulove_prvky_matice_X = find(X)


