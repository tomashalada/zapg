a = true                % hodnota logicke jednicky (plati)
b = false               % hodnota logicke nuly (neplati)

disp("__________________________________________________")

if a
  disp("1. podminka splnena - a = true")
end

disp("__________________________________________________")

promenna = 3.32;        % uvazovana promenna

if promenna == 3.32     % prekontroluj hodnotu v promenne a pokud odpovida
                        % proved nasledujici blok kodu
  disp("2. podminka splnena -> promenna == 3")
end

if promenna == 4.34     % prekontroluj hodnotu v promenne a pokud odpovida
                        % spln podminku
  disp("3. podminka splnena -> promenna == 3")
end

disp("__________________________________________________")


% PROTIPRIKLAD - TAKHLE NE!
% -------------------------------------------------------
if prommena = 3.32
  ("3. podminka splnena -> promenna == 3.32")
end

if prommena = 4.18
  ("4. podminka splnena -> promenna == 3.32")
end
% -------------------------------------------------------
% KONEC PROTIPRIKLADU

disp("__________________________________________________")

if promenna == 1.45       % prekontroluj hodnotu v promenne a pokud odpovida
                          % spln podminku, pokud neplati, postup k dalsi podmince
  disp("5. podminka splnena (IF) -> promenna == 1.45")

elseif promenna = 3.32    % prekontroluj hodnotu v promenne a pokud odpovida
                          % spln podminku, pokud neplati, postup k dalsi podmince
  disp("5. podminka splnena (ELSE IF) -> promenna == 3.32")
  disp("tady toho muze byt mnohem vic")
  q = 1; p = 3;           % OBECNA POZNAMKA: promenne deklarovane v ramci
                          % nejake smycky existuji pouze v ramci dane smycky a
                          % nelze k nim pristupovat po ukonceni bloku

  s = q + p               % zde s promennymy "p" a "q" lze pracovat, byly
                          % deklarovany v ramci tohoto bloku

else                      % blok kodu ktery se provede v pripade, ze ani jedna
                          % z podminek neplati
  disp("5. ani jedna z podminek neplati")
end

disp("__________________________________________________")

promenna = 12             % zmenime hodnotu promenne

if promenna == 1.45
  disp("6. podminka splnena (IF) -> promenna == 1.45")
elseif promenna == 3.32
  disp("6. podminka splnena (ELSE IF) -> promenna == 3.32")
else
  disp("6. ani jedna z podminek neplati")
end

disp("__________________________________________________")

%% Logicke operatory

promennaLogicka = true
promennaCiselna = 12

if promennaLogicka == true  % prekontroluj, zda je promenna (vyraz) platny
  disp("7. podminka plati")
else
  disp("7. podminka neplati")
end

disp("__________________________________________________")

if promennaLogicka != true  % ! je symbol negacem, != znaci, ze promenna se nerovna
                            % tj. v pripade, ze logicka
                            % promenna == true, podminka neni splnena
%a nebo jednoduse pouze "if !promennaLogicka"
  disp("8. podminka plati")
else
  disp("8. podminka neplati")
end

if promennaCiselna == 12    % prekontroluj, zda je promenna (vyraz) platny
  disp("9. podminka plati")
else
  disp("9. podminka neplati")
end

if promennaCiselna != 12    % ! je symbol negace, != znaci, ze promenna se nerovna
                            % tj. v pripade, ze promenna != 12, vyraz je platny a
                            % podminka plati (v tomto pripade plati)
  disp("10. podminka plati")
else
  disp("10. podminka neplati")
end

disp("__________________________________________________")

if promennaCiselna == 12 || promennaLogicka == true  % || je symbol pro "nebo"
                                                     % je-li tedy splnena ALESPON jedno
                                                     % z tvrzeni, podminka plati

  disp("11. podminka plati")
else
  disp("11. podminka neplati")
end

if promennaCiselna == 13 || promennaLogicka == true  % || je symbol pro "nebo"
                                                     % je-li tedy splnena ALESPON jedno
                                                     % z tvrzeni, podminka plati
  disp("12. podminka plati")

else
  disp("12. podminka neplati")
end

if promennaCiselna == 13 || promennaLogicka == false % || je symbol pro "nebo"
                                                     % je-li tedy splnena ALESPON jedno
                                                     % z tvrzeni, podminka plati
  disp("13. podminka plati")
else
  disp("13. podminka neplati")
end

disp("__________________________________________________")

if promennaCiselna == 13 && promennaLogicka == true   % && je symbol pro "a"
                                                      % jsou-li splnena VSECHNA
                                                      % z tvrzeni, podminka plati
  disp("14. podminka plati")
else
  disp("14. podminka neplati")
end

if promennaCiselna == 12 && promennaLogicka == true   % && je symbol pro "a"
                                                      % jsou-li splnena VSECHNA
                                                      % z tvrzeni, podminka plati
  disp("15. podminka plati")
else
  disp("15. podminka neplati")
end

