%% ARTUMENT "AXIS"

X = repmat([1, 2, 3, 4], 4, 1)      % vytvorme pomocnou matici pomoci prikazu "repmat"
                                    % Prikaz "repmat" rozkopiruje zadany vektor [1,2,3]
                                    % do matice 3x3 - kopirovano po radcich
                                    % (tj. 3 opakovani v radcich,
                                    % 1 opakovani ve sloupcich)

rozmer_matice = size(X)             % urci rozmer matice X

pocet_radku_matice = size(X)(1)     % urci pocet radku matice X
                                    % POZOR! Tento prikaz nefunguje v prostedi matlabu,
                                    % pouze pod jazykem octave. V matlabu je nutne
                                    % pouzit rozmer_matice(1), nelze totiz pristupovat
                                    % primo k vektoru, ktery je vracen jako
                                    % vysledek funkce

disp("__________________________________________________")
% Pro oba jazyky vsak funguje koncept argumentu "axis"


pocet_radku_matice = size(X, 1)     % dodatecny argument v prikazu "size" urci, v jazyke
                                    % smeru chceme urcit rozmer objektu
                                    % "1" pro prvni rozmer, pocet radku

pocet_radku_matice = size(X, 2)     % dodatecny argument v prikazu "size" urci, v jazyke
                                    % smeru chceme urcit rozmer objektu
                                    % "2" pro druhy rozmer, pocet sloupcu

disp("__________________________________________________")
% Argument axis lze pouzivat i pro radu dalsich prikazu

disp(X)

prumer_z_radku_matice = mean(X, 1)  % urci prumer matice X pro prvni rozmer,
                                    % tedy po radcich
prumer_z_radku_matice = mean(X, 2)  % urci prumer matice X pro druhy rozmer,
                                    % tedy po sloupcich



