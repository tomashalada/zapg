# 11. cvičení - 4 . 12. 2024

Vypracuje moodle test nebo jednu z následujících dvou úloh pracující s diskrétní Fourierovo transformací (DFT). (Samozřejmě můžete zkusit obě.)

## Úkol - akord

V přiloženém souboru `akord.wav` je nahradný akord A-dur
- zvukovou nahrávku načtěte (maltab i python - například s využitím scipy obsahují funkci na načítání wav souborů) a zobrazte, jedná se o obyčejný 1d signál
- proveďte DFT získaného sinálu a určete, které frekvence (tóny) akord A-dur obsahuje
- rozhodněte, zda je kytara naladěná

Komentáře k úloze:
- Je potřeba znát samplovací frekvenci nahrávky, tu však vrací přímo funkce, která nahrávku načítá, viz třeba `sampleFreq, signal = wavfile.read("path/a-dur.wav")`. Pro úplnost poznamenjeme, že samplovací frekvence přiloženého souboru je 16000 Hz.
- Jaké frekvence hledám? Na následujícím obrázku [převzatém z](https://yuhu.cz/hudba/kytara-tony.html) jsou znázorněny tóny akoru A-dur.
   ![akord](https://github.com/tomashalada/zapg/blob/main/11/data/akord_znazorneni.png)

  Frekvence jednotlivých tónů lze nalézt v [následující tabulce](https://www.liutaiomottola.com/formulae/freqtab.htm). Zajímá mě tedy:
   - nota C# s frekencí 554.365 Hz
   - nota A s frekvencí 440 Hz
   - nota E s frekvencí 329.628 Hz
- Pokud je kytara naladěná, měl bych najít odpovídající vrcholy na těchto frekvencích. Pokud ne, budou výsledné vrcholy vychýleny.

_(ponz.: Kvalita nahrávky by snad měla být postačující. Případně můžete využít libovolný vlastnoručně generovaný signál. Pro stestování by bylo asi ideální začít s nahrávkou, která obsahuje samotný tón. Stačí obyčejný záznam zvuku z telefonu, lze použít libovolný nástroj, postačí i prostý hlas. Tím by se měl eliminovat šum spojený se souzvuky.)_

## Úkol - komprese obrazu

- proveďte DFT následujícího obrázku
- zanedbejte koeficinety, které mají malou hodnotu ( 25 % koeficientů, 50 % koeficientů, 75 % koeficientů )
- proveďte inverzní DFT a porovnejte obrázek rekonstruovaný z ořezaných koeficientů se vstupním obrázkem
- určete množství ušetřené paměti
