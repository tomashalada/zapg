%%% For cyklus

for i = 1:10                % projdi vsechny cela cisla mezi 1 a 10
  i                         % prislusne (aktivni) cislo
endfor

disp("__________________________________________________")

a = ones(1, 10)             % vytvor vektor obsahujici jednicky o velikosti 10

for i = 1:10                % projdi vsechny cela cisla mezi 1 a 10
  a( i ) = a( i ) + i*2;    % uprav prislusny prvek vektoru a na zaklade indexu i
end

disp("__________________________________________________")

a                           % zobraz modifikovany vektor a
%... a nebo disp(a)

disp("__________________________________________________")

B = zeros( 3, 3 )           % vytvor nulovou matici o rozmerech 3x3

disp("__________________________________________________")

for x = 1:3
  for y = 1:3
    B( x, y ) = x *10 + y;  % uprav prislusny prvek na zaklade indexu x a y
  end
end


B                           % zobraz modifikovanou matici b
%... a nebo disp(B)

disp("__________________________________________________")

C = eye(3)                  % vytvor jednotkovou matici o rozmerech 3x3
size(C)                     % prikaz ktery zobrazi velikost matice
size(C)(1)                  % velikost matice je vektor -> urci pocet radku

disp("__________________________________________________")

for i = 1:size(C)(1)        % projdi vsechny radky matice
  C( i, : )                 % vypis prislusny radek matice
end
