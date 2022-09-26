%%Nacteni dat ze souboru

DATA = load( 'dataSimple.dat' );  % nacte data ze souboru
help load;                        % zobrazi napovedu k prikazu load

disp("__________________________________________________")

dataSize= size(DATA)              % zobrazi velikost nacctenych dat

disp("__________________________________________________")

disp(DATA)                        % zobrazi nactena data

disp("__________________________________________________")

%zkraceny zapis prikazu DATA(:,2) = DATA(:,2) + 10
DATA(:, 2) += 10                  % pricte k druhemu slupci nactenych dat cislo 10

disp("__________________________________________________")

fileID = fopen( 'dataEdit.txt','w' );         % vytvori a "otevre" soubor pro zapis
fprintf( fileID,'%6s %12s\n','x','f(x)' );    % vypise do souboru hlavicky - popis sloupcu
fprintf( fileID,'%6.2f %12.8f\n',DATA );      % zapise data to souboru
fclose( fileID );                             % "zavre" instanci prislusneho souboru

% VYSVETLIVKY:
% fprintf( @instance souboru, do ktereho zapisujeme,
%          @format obsahu %n.dF n-ty_znak_radku
%                          d    pocet desetinych mist)
%                          F    format zapisovaneho retezce)
%          @zapisovana data, retezec
%
% POZNAMKA: V predchozi ukazce obsahuje format dva prvky. To je tim, ze
%           zapisujeme budto dva textove retezce (hlavicka souboru)
%           a nebo matici obsahujici dva slupce.

