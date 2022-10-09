%% JEDNOROZMERNE A VICEROZMERNE INDEXOVANI MATIC

x = [1:9]                   % Vytvor pomocny vektor obsahujici promenne

A = reshape(x, [3,3])       % Preskladej vektor x do matice 3x3
                            % (viz soubor 04/operace_na_vektorech.m)
disp("__________________________________________________")

A = reshape(x, [3,3])'      % Preskladej vektor x do matice 3x3
                            % (viz soubor 04/operace_na_vektorech.m)
                            % a proved transpozici vysledne matice

disp("__________________________________________________")

A = reshape(x, [3,3])       % Preskladej vektor x do matice 3x3
                            % (viz soubor 04/operace_na_vektorech.m)


A(2,2)                      % pristup k prvku A(2, 2)

A(5)                        % pristup k prvku A(2, 2)
A(6)                        % pristup k prvku A(3, 2)
A(8)                        % pristup k prvku A(3, 2)

disp("__________________________________________________")

i = 2; j = 2;               % poloha prvku v matici, ke kteremu chceme pristoupit
A(3*(j - 1) + i)            % pristup k prvkum matice jako k jednorozmernemu poli

i = 3; j = 2;               % poloha prvku v matici, ke kteremu chceme pristoupit
A(3*(j - 1) + i)            % pristup k prvkum matice jako k jednorozmernemu poli

i = 2; j = 3;               % poloha prvku v matici, ke kteremu chceme pristoupit
A(3*(j - 1) + i)            % pristup k prvkum matice jako k jednorozmernemu poli

disp("__________________________________________________")
disp("Prevod matice na jedorozmerne pole:")

disp(A)

b = A(:)                    % preved matici A na jednorozmerne pole PO SLOUPCICH
c = A'(:)                   % preved matici A na jednorozmerne pole PO RADCICH

disp("Prevod matice na jedorozmerne pole - reshape:")

c = reshape(A,1,[])         % preved matici na jednorozmerne pole PO SLOUPCICH
                            % pomoci prikazu "reshape"
b = reshape(A.',1,[])       % preved matici na jednorozmerne pole PO SLOUPCICH
                            % pomoci prikazu "reshape"

disp("__________________________________________________")

x = randi([1 10],1,10)      % Vygenerovani nahodnych cisel v danem rozmezi
                            % @prvni_argument - interval pro generovani nahodnych cisel
                            % @druhy_argument - pocet radku
                            % @treti_argument - pocet sloupcu

reshape(x,2,[])             % prevedeni na 2 rozmerne pole o DVOU sloupcich
                            % (viz soubor 04/operace_na_vektorech.m)

reshape(x,[],2)             % prevedeni na 2 rozmerne pole o DVOU radcich
                            % (viz soubor 04/operace_na_vektorech.m)

disp("__________________________________________________")
% Vytvoreni tridiagonalni matice z prvni ulohy pomoci 1D indexovani
% ROZMYSLETE SI!

N = 10
X = zeros(N,N);
X(   1:1+N:N*N ) = 2;
X( N+1:1+N:N*N ) = 1;
X(   2:1+N:N*N-N ) = 1;
X

