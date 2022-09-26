%%% For cyklus

for i = 1:10            % projdi vsechny cela cisla mezi 1 a 10
  i                     % prislusne (aktivni) cislo
endfor

disp("__________________________________________________")

a = ones(1, 10)        % vytvor nulovy vektor o velikosti 10


for i = 1:10            % projdi vsechny cela cisla mezi 1 a 10
  a(i) = a(i) + i*2;    % uprav prislusny prvek vektoru a na zaklade i
endfor

disp("__________________________________________________")

a                       % zobraz modifikovany vektor a

