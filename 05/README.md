# 5. cvičení - 23. 10. 2024

Vyplnit předpřipravený moodle test nebo vypracovat následující úkol:

## Úkol - populační rovnice

Úkoly plňte v zadaném pořadí. Prozkoumejte chování populační rovnice

$$ x_{n+1} =  r x_{n} ( 1 - x_{n} ) $$

$x_{n}$ označuje saturaci prostředí populací (procentuální poměr populace z maximální možné, jednoduše jenom populaci) v kroku (nebo například  v roku) $n$ , $r$ je konstatní faktor odpozorovaný z prostředí.

1. - Vytvořce funkci, která přebírá $r$ jako argument. Předpokládejme, že počáteční populace je $x^0=0.3$. Úkolem funkce je vyčíslit rovnici $x_{n+1} =  r x_{n} ( 1 - x_{n} )$ alespoň v 500 krocích (letech) a __vrátit hodnoty z posledních 100 kroků (let)__.
   - Pro $r\in[0,4]$ (pozn. použijte alespoň 1000 mezikroků, tj. `r_list = np.linspace( 0.0, 4.0, 1000 )`) zavolejte volejte funkci, na vyčíslední rovnice s daným $r$. Funkce vrátí hodnoty uvedené rovnice (stav populace) v posledních 100 letech. Ty uložte do pomocného pole.
   - Vytvořte graf, do kterého pro každé $r$ vynesete získaný stav populace. Pozor! Pro každé $r$ máte 100 hodnot! Do grafu zapište všechny. Nepoužívejte tedy funkci `plot`, ale použijte scatter. Podúloha - otestujte, co funkce `scatter dělá`.

2. Zobrazte celý průběh populace v prvních 50 krocích (letech) pro $R = [ 0.5, 1.5, 3.25, 3.5, 3.7, 4 ]$, pro výchochí hodnotu $x_0 = 0.3 $. Každý průběh umístěte do stamostatného drafu v subplotu. Průběhy/grafy generujte pomocí funkce!
