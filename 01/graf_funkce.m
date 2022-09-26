%%%  Graf funkce, interval s ekvidistantním krokem

x = linspace(0, 2*pi, 10)      % vytvor vektor 10 bodu na intervalu [0, 2pi]
f = sin(x)                     % vypocitej sin(x) v hodnotach danych x
g = cos(x)                     % vypocitej cos(x) v hodnotach danych x

disp("__________________________________________________")

x = linspace(0, 2*pi, 100);    % vytvor vektor 100 bodu na intervalu [0, 2pi]
f = sin(x);                    % vypocitej sin(x) v hodnotach danych x
g = cos(x);                    % vypocitej cos(x) v hodnotach danych x

disp("__________________________________________________")

plot (x, f);                   % zobraz data f = f(x)
print -dpng fce.png            % uloz vysledny obrazek jako png (neni nezbytne nutne)

%$% Novy plot se otevira samostane/prepisuje stary plot
plot (x, f, "g");                       % dodatecne atributy zobrazeni: "g"  ...zelena cara
plot (x, g, "--k", "linewidth",  2);    % dodatecne atributy zobrazeni: "--k"  ...carkovana cerna cara
                                        %                               linewidth, 2 ...cara tloustky 2
print -dpng fce.png

% RESENI: prikaz "hold" pozdrzi vystup, takze se vsechy
%         nasleduji ploty ukladaji do jednotho obrazku
hold
plot (x, f, "g");
plot (x, g, "--k", "linewidth",  2);
print -dpng fce.png
hold off

% Dodatecne atributy grafu
hold
plot (x, f, "g");
plot (x, g, "--k", "linewidth",  2);
legend("six(x)", "cos(x)")              % zobraz legendu
grid                                    % zobraz sit na pozadi
print -dpng fce.png
