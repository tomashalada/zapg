%%% Forcyklus, pouziti prikazu break/continue

x = ones(1, 10)          % vytvor vektor obsahuici pouze jednicky

for k = 6:10             % projdi vsechna cela cisla mezi 6 a 10
  x( k ) = 5;            % uprav odpovidajici prvky vektoru
end

x                        % vypis upraveny vektor

disp("__________________________________________________")

size(x)                  % vraci vektor obsahujici rozmery vektoru x
                         % tj. [pocetSloupcu, pocetRadku]

for k = 1:size(x)(2)     % projdi vsechny prvky vektoru x
  fprintf(" Prvek vektoru: %d.\n", x( k )) % vypis dany prvek
  if x( k ) == 5         % pokud prvek nabyva hodnoty 5
                         % proved nasledujici blok kodu
    break                % prikaz "break" ukonci cinnost celeho for cyklu
  end
end

disp("__________________________________________________")

x                        % zobraz vektor x

x(8) = 4; x(9) = 6;      % modifikuj vektor x

x                        % zobraz vektor x

for k = 1:length(x)      % projdi vsechny prvky vektoru x
  fprintf(" Prvek vektoru: %d.\n", x( k )) % vypis dany prvek pomoci
                                           % formatovaneho vystupu
  if x( k ) == 5         % pokud prvek nabyva hodnoty 5
                         % proved nasledujici blok kodu
    continue             % prikaz "continue" preskoci zbytek AKTUALNIHO
                         % KROKU cyklu
  end
  fprintf(" Prvek vektoru se nerovna pet.\n" )
end


disp("__________________________________________________")

v = [ 1 4 5 7 5 ]        % vektor

for i = v                % for cyklus s nactenim jednotlivych prvku vektoru
                         % v do promenne i

  i                      % zobraz promennou i, tj. prvek vektoru v

end

disp("__________________________________________________")

A = [ 1 2 3;
      4 5 6;
      7 8 9; ]

for prvekDruhehoRadku = A(2, :) % cyklus pres vsechny prvky druheho radku
  disp(prvekDruhehoRadku)
end

disp("__________________________________________________")
%% Cyklus while

promenna = 0            % zadefinovani pomocne promenne

while promenna < 7      % provadej nasledujici blok kodu, dokud je
                        % splnena predepsana podminka "while (podminka)"
                        % tj. v nasem pripade je hodnota promenne < 7
                        % podminka muze byt vsak libovolna

  promenna = promenna + 1 % aktualizuj promennou 7

                        % POZN. pokud bychom v nasem pripade neupravovali
                        % hodnotu promenne 7, ziskali bychom nekonecnou smycku

end

disp("__________________________________________________")

T = 0                   % pomocne promenne
deltaT = 0.25

while true              % nekonecny cyklus

  T = T + deltaT        % aktualizace ridici promenne (treba casoveho kroku)

  if( T >= 1 )          % podminka - pokud plati proved nasledujici
                        % blok kodu, v nasem pripade zastav cyklus

    break;              % prikaz "break zastavi cyklus"
  end

end
