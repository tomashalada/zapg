# 2. cvičení - 2. 10. 2024

Úkolem je __do příštího týdne__ vyplnit __připravený moodle test__ nebo vypracovat následující úkol, ať už v jazyku matlab nebo python.

## Úkol navíc - varianta Chci se naučit programovat
V prvé řadě si procvičtve obsah cvičení pomocí jazyka python a knihovny numpy.

Úkol obsahuje prvky, na které se zaměříme až příští týden, nicméně můžete úlohy zkusit.
Zdařené pokusy stejně jako pokusy u kterých se na něčem zaseknete posílejte přes odkaz na git repozitář.


#### Grafy a grafy:

Způsoby vytváření grafů si sice probereme až příště, ale nejedná se o nic složitého. Ukázku tvorby grafů můžete najít [v podkladech ke cvičení](https://github.com/tomashalada/zapg/blob/main/01/graf_funkce.m). Věnujte prozornost funkci `linspace` potažno `numpy.linspace`. Velmi dobrým průvodcem pro vytváření grafů je [oficiální průvodce matplotlibu](https://matplotlib.org/stable/tutorials/pyplot.html), případně [dokumentace MATLABu](https://www.mathworks.com/help/matlab/ref/plot.html).

1. Vytvořce graf funkce f(x) = exp(x) na intervalu [0, 2]
2. Do stejného obrázku vytvořte graf funkci f(x) = x^3 + x^2 + x
3. popiště osy, udělejte titulek grafu

#### Další matice

Příkazy `if`, `elif` a `else` již byly probrány během dneška, [ukázky naleznete v podkladech](https://github.com/tomashalada/zapg/blob/main/02/prikaz_if.m). Podívejte se na jejich ekvivalent v jazyku python [třeba zde](https://www.w3schools.com/python/python_conditions.asp) nebo [zde](https://coobas.gitlab.io/python-fjfi/posts/zakladni-syntaxe.html#Podm%C3%ADnky-a-dal%C5%A1%C3%AD-bloky-v-Pythonu). Druhým klíčovým nástrojem je cyklus for `for`, na ten se sice čeká až příště, ale jak tento koncept funguje se můžete seznámit například v [ukázkách připravených na hodinu](https://github.com/tomashalada/zapg/blob/main/01/for_cyklus.m), více pak [zde](https://github.com/tomashalada/zapg/blob/main/02/for_cyklus_a_prikaz_if.m), a dále si o for cyklech můžete přečíst [zde](https://www.w3schools.com/python/python_for_loops.asp) či [zde](https://logickemysleni.cz/navod-na-python-cyklus-s-poctem-opakovani/).

Jak jste měli možnost přesvědčit se minule, pro vytváření speciálních matic existují elegantnější varianty. Asi se často nesetkáte s tím, že budete muset matice vytvářet takovýmto způsobem. Cílem této úlohy však není naučit se vytvářet speciální matice, nýbrž procvičit cykly, podmínky a zejména se procvičit v indexováním v polích. S tím se totiž budete setkávat opravdu hodně.

1. Vytvořte tridiagonální matici o rozměrech 10x10 s čísly (-1, 2, -1) na diagonálách. Tentokrát však použijte for cyklu a příkaz if.
2. Vytvořte horní trojúhelníkovou matici o rozměrech 10x10 pomocí for cyklu a příkazu if. Matici vytvořte ve dvou variantách. První s čísly 1-10 na diagonále (zbylé prvky horního trojúhelníku určete libovolně).
3. Na obě matice vyzkoušejte zobrazovací funkci `imshow` z  `matplotlib.pyplot`
