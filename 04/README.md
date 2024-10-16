# 4. cvičení - 16. 10. 2024

Vyplnit předpřipravený moodle test nebo vypracovat následující úkol:

## Úkol - lineární neuron

Detailní popis úlohy naleznete [zde](). Ve zkratce se jedná o následující kroky:

 - Načtěte data ze souboru "ux.dat"
    První sloupec obsahuje vstupní signál a druhý sloupec příslušnou reakci systému.

 - Pomocí lineárního neuronu proveďte predikci reakce systému na základě vstupních dat.

    Linearní neuron má tvar:

    $$ Y_{predikovane} = \mathbf{W} \cdot \mathbf{X} $$
    $$ X = [x_1, x_2, x_3, x_4] =  [y(k-1), y(k-2), u(k-1), u(k-2)] $$
    $$ W = [w_1, w_2, w_3, w_4] $$

Data jsou získána v jednotlivých časových krocích s konstatním vzorkováním.
Iterujte přes jednotlivé časové kroky.
V každém časovém krorku:
   - vyčíslete vektor  $\mathbf{X}$
   - určete predicki v daném časovém kroku  $Y_{predikovane} = \mathbf{W} \cdot \mathbf{X}$
   - urcete chybu mezi predikovanou hodnotou a měřenými hotnoatmi $ e = Y_{merene} - Y_{predikovane} $
   - určete, o kolik se změní váhy $\mathbf{W} $ pomocí vztahu $ \Delta \mathbf{W} = 0.1  e  \mathbf{X} $
   - aktualizujte váhy $ \mathbf{W} = \mathbf{W} + \Delta \mathbf{W} $

Tímto způsobem zpravujte všechny časové kroky.
Celý proces proveďte 10x (při každém opakovaní, tj. v každé epoše) se zlepsi odhad vah $ \mathbf{W} $.
Tento proces se nazývá jako trénování - jednotlivé cykly jako epochy. (_Protože slova jako proklad/fitování a iterace by jiste nezněla tak dramaticky,..._)

   - Výsledky zobrazte pomocí subplotu ("help subplot") jako tři grafy pod sebou.
   - V prvním grafu bude vynesen vstupní signál a měřená data
   - V druhém grafu budou vynesena měřená a predikovaná data
   - Ve třetím grafu bude vynesena chyba mezi perdikovanými a měřenými daty
