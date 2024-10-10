# 3. cvičení - 9. 10. 2024

Vyplnit předpřipravený moodle test nebo vypracovat následující úkol:

## Úkol

1. Načtěte soubory 'data1.txt' a 'data2.txt' které naleznete [ke stažení zde](https://github.com/tomashalada/zapg/tree/main/02).
   Každý soubor obsahuje dva sloupce, přičemž první sloupec je v obou případech stejný.
   Vytvořte:

    - graf dat ze souboru 1 a 2
    - použijte logaritmickou osa y
    - vytvořte průměr dat z prvního a druhého souboru
                        - pomocí funkce
                        - manuálně pomocí `for` cyklu
    - průměry zapiště do souboru souboru pomocí příkazu (__TIP__: Zapiště výsledek ve formátu LaTeXové nebo markdownové tabulky, která půjde hezky zobrazit.)

2. Vytvořte matici náhodných čísel o rozměru 100x100 (lze vytvořit zcela náhodnou matici nebo si lze s úlohou vyhrát a do jednotlivých řádků matice uložit náhodnou odchylku od nějaké Vámi zvolené funkce).
   (__AKTUALIZACE: Abychom to trochu ozvláštnili, můžete místo náhodné matice použít reálná data z výpočtů a měření. Do adresáře `du_data` jsem nahrál soubor s hodnotami k úloze, o které jsem mluvil na cvičení. V rámci adresáře naleznete dvojici souborů - první `data_vysky_hladin.csv` obsahuje výšky hladiny v čase a nahrazuje tak náhodnou matici.__ )
    - Zjistěte průměr všech řádků.
    - Vyneste do grafu hodnoty všech řádků, jejich průměr a standardní odchylku
    - (__AKTUALIZACE: Rozhodnete-li se pro variantu s reálnými daty, v adresáři `du_data` naleznete ještě druhý soubor `data_experiment.dat`. Ten obsahuje pouze několik hodnot - výšku hladiny v několika málo bodech zjištěnou v rámci experimetnu. Vyneste tyto hodnoty jako body do grafu k průměru všech řádků (průměrné výšce hladiny). Tím můžete porovnat, jak přesně jsme v simulacích počítali.__)

    - z vektoru průměrů určete nejmenší hodnotu
        - pomoci příkazu
        - pomoci for cyklu
    - z vektoru průměru určete __nejmenší__ hodnotu
                        - pomocí funkce
                        - manuálně pomocí `for` cyklu (_Zde je nutné mít se na pozoru_!)
    - vektor průměrů a standardních odchylek zapiště do souboru souboru pomocí příkazu (__TIP__: Zapiště výsledek ve formátu LaTeXové nebo markdownové tabulky, která půjde hezky zobrazit.)


## Varianta Chci se naučit programovat

Začněte se seznamovat s funkcemi a členěním kódu. K funkcím se během několika cvičení dostaneme, nicméně velmi dobrý úvod k funkcím lze [najít v materiálech FJFI](https://gitlab.fjfi.cvut.cz/ksi/zpro-2023-public/-/blob/main/07%20funkce.ipynb?ref_type=heads), případně varianta pro matlab je k dispozici [v dokumentaci](https://www.mathworks.com/help/matlab/ref/function.html).

Zkuste funkce využít při vypracování úkolu či úloh z Moodle.
