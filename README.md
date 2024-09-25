# Podmínky pro udělení zápočtu zápočtu

- Zápočet je udělen jako průměr známek z jednotlivých cvičení. Žádné z cvičení nesmí zůstat neklasifikované nebo klasifikované nedostateneč.
- Známky z cvičení jsou uděleny na základě vypracovaného úkolu/moodle testu/obojího dle příslušeného cvičení. Je vyžadováno porozumění úkolům!
- Absenci je nutné nahlásit! Akceptovatelné jsou 2 nahlášené a omluvené absence. Úkol/moodle test z daného cvičení je nutné absolvovat!
- Semestrální práce:

   1. Najít a vymyslet nějaký problém, kde můžete probíranou látku aplikovat. Zdůvodnit, proč Vám algoritmizace a programování v daném problému pomůže. Přesně definovat a popsat co bude cílem programu. Nutné odevzdat a nechat si schválit do 6. týdne!
   2. Rozvhrnout strukturu programu, co bude potřeba využít.
   3. Napsat samotný program.

- V případě, že pracujete na samostatné práci, je potřeba každý týden reportovat pokrok (příspěvek do github složky projektu).

---

# Programovací prostředí

1. MATLAB
   - Z [univerzitním webu](https://download.cvut.cz/campus-wide-matlab/) lze stáhnout a používat pod školní licencí.
   - S pomocí školních přihlašovacích údajů [lze používat online](https://www.mathworks.com/products/matlab-online.html).
   - (Matlab lze spustit i z [výpočetních serverů fakulty](https://fs.cvut.cz/zamestnanci/informace-o-sluzbach/cps/sluzby/el/))

2. GNU Octave - free software
   - Volně ke [stažení](https://octave.org/) a k používání

3. Python - bezkonkurenč nejrozšířenejší programovací jazyk v technických disciplínách
   - Návod k [instalaci na Windows](https://kitner.cz/testovani_softwaru/jak-nainstalovat-python/). __POZOR! Je opravdu nutné zakliknou políčko "Add python.exe to PATH!"__ Jinak váš operační systém nebude vědět, odkud python spustit.
   - Linux obsahuje python automaticky.

V případě pythonu v rámci základní instalace dostaneme pouze samotný interpreter.
Pro naše potřeby budeme i dodatečné knihovny.
Jednotlivé knihovny je potřeba samostatně stahovat, nicméně python má velmi elegatně vyřešený způsob jak se ke knihovnám dostat.
Ty jsou dostupné pomocí tzv. správce balíčků _pip_, který je dobré nainstalovat společně s pythonem - návod je k dispozici [ve výše vedeném odkazu](https://kitner.cz/testovani_softwaru/jak-nainstalovat-python/).
Knihovny je následně možné instalovat pomocí příkazu `pip install <název knihovny>`.
Pro naše potřeby budeme potřebovat zejména knihovny

- [NumPy](https://numpy.org/) která nám umožní používat většinu operací znamých z matlabu. Syntaxe je velmi podobná, místy s drobným rozdílem, viz [NumPy for Matlab users](https://numpy.org/devdocs/user/numpy-for-matlab-users.html). Instalace pomcí `pip install numpy`.
- [Matplotlib](https://matplotlib.org/) knihovna pro tvorbu grafů.
- Řada užitečných matematických funkcí je dostupná pod knihovnou [SciPy](https://scipy.org/).


## Editor, vývojové prostředí

Základním krokem ke štěstí je používat vhodný editor.
Doporučuji [VSCode](https://code.visualstudio.com/) a nebo [VSCodium](https://vscodium.com/), což je stejně kvalitní open source alternativa.
Podrobný návod k instalaci naleznete ve [volně dostupných materiálech FJFI](https://gitlab.fjfi.cvut.cz/ksi/zpro-2023-public/-/blob/main/14%20VSCodium.ipynb?ref_type=heads).
Návod obsahuje i instalaci patřičných doplňků editoru, které zajišťují napovídání syntaxe a případně programátora rovnou varují, že napsal něco, co by se interpreteru nemuselo líbit.

## GIT

I sebemenší skript, který píšeme, putřebujeme zálohovat.
Občas se chceme vrátit k předchozí verzi.
A nebo k němu mít přístup z různých zařízení.
A nebo na něm spolupracovat s kolegy.
A nebo ho zkrátka dát jenom k dispozici ostatním.
__Upřímně Vás prosím, naučtě se v tomto ohledu používat Git.__

#### Git je poměrně univerzální nástroj pro správu a synchronizaci dat v souborech.

[Git](https://git-scm.com/)
Ve zkratce to pro nás znamená následující: když vytvořím soubor (ideálně textový, budeme se zaobírat pouze textovými soubory), mohu jej uložit do gitu.
Git si zapamatuje jak soubor vypadá.
Soubor můžu následně upravovat. Udělám-li v souboru nějaké úpravy, můžu se gitu zeptat, jak se soubor změnit oproti předchozí verzi.
Novou verzi můžete opět uložit, případně se můžete k libovolné předchozí verzi opět vrátit.
Možností je ovšem mnohem víc, z vašeho projektu můžeme vydělit například samostatnou větev a v ní pracovat dál - změnit či rozšířit obsah původního souboru (dopsat nový algoritmus, přepsat úvod Vaší práce) a pokud budete s výsledkem spokojeni, zahrnout změny i do hlavní větve.


Nový rozměr ovšem git získává ve spojení s nějakou hostovací platformou. Rozšířené a světově používané jsou dvě: [Github](https://github.com/) nebo případně [GitLab](https://gitlab.com/).
Ty poskytují jakýsi prostor, na kterém můžete Váš kód, text, práci a příslušné verzování uchovávat.
A to buď veřejně nebo soukromě.
Vy si pak můžete kdekoliv kód stáhnout, udělat změny a ty si opět nahrát.
Přistupovat můžete ke všem dostupným projektům - dokonce do nich můžete provést úpravy a nahrát návrh změn, který může autor projektu zanést nebo zařadit do repozitáře.

_Příklad takového zacházení:_ Bude s několika kolegy psát program ovládání nějakého stroje. Já založím repozitář, nahraji první verzi kódu. Druhý kolega si jej stáhne, dopíše další část, nahraje úpravu. Já rozhodnu, zda možné úpravu do kódu zanést a případně potvrdím nahrání uvedených změn. Třetí kolega si stáhne program s již provedenými úpravami - zjistí, že část nefunguje, ale jemu se nechce příslušnou část opravovat. Proto využije tzv. "Issues" kam zapíše zjištěné chyby v chování - ty se zobrazí všem ostatním v rámci github repozitáře. A někdo další může provést příslušné opravy.

#### Jak začít s githubem na Windows

- Docela rozumně vypadá [následující návod](https://www.miroslavholec.cz/blog/kompletni-pruvodce-github-pro-visual-studio-code).
- [Git - instalace na windows](https://github.com/git-guides/install-git)
- [Jak začít s githubem na Windows](https://www.pluralsight.com/resources/blog/guides/using-git-and-github-on-windows)
- Případne lze vycházet z [oficálních návodů gitu](https://git-scm.com/book/cs/v2).

Jsem si vědom, že to z počátku musí být ohromná španělská vesnice, ale věřte, že to bude stát za to. V případě problémů s instalací či realizací se ozvěte.

#### Doplňující dokazy na téma git a github

- [Úvod do Gitu](https://learn.microsoft.com/cs-cz/training/modules/intro-to-git/)
- [Úvod do GitHubu](https://learn.microsoft.com/cs-cz/training/modules/introduction-to-github/)

---

# Chci se naučit programovat

...protože dřív nebo později zjistím, že si tím usnadním spoustu práce.

Doporučil bych postupovat následujícím způsobem.
Na úvod si pročít pár záklandích příkadů, některé si z nich vyzkoušet a v plném slova smyslu si trochu pohrát.
Neznažte se si všechno zapamatovat, to přijde postupem času samo.
Jde spíš o to, aby jste viděli, co je možné udělat či zapsat a případě kde potom hledat.
Na úvod doporučuji například:

- Úplné základy jsou velmi hezky zpracované [v materiálech FJFI od Jakuba Klinkovského](https://gitlab.fjfi.cvut.cz/ksi/zpro-2023-public). Podklady vysvětlují klíčové koncepty a syntax v jazyce python.
- Víc konkrétních ukázek a méně technických detailů lze najít dále například v [podkladech k předmětu Vědecké programování v Pthonu z FJFI](https://coobas.gitlab.io/python-fjfi/). Docela pěkný úvod do [základních funkcí pythonu](https://coobas.gitlab.io/python-fjfi/posts/zakladni-syntaxe.html). Obdobný přehled příkazů v [knihovně NumPy](https://coobas.gitlab.io/python-fjfi/posts/zaklady-numpy.html) a v [knihovně Matplotlib](https://coobas.gitlab.io/python-fjfi/posts/matplotlib.html)

Doplňující poklady Numpy:

- Úvodní kuchařka v [příkazů v NumPy](https://numpy.org/doc/stable/user/quickstart.html)
- Přehled příkazů [NumPy: the absolute basics for beginners](https://numpy.org/doc/stable/user/absolute_beginners.html)

V moment, kdy se obeznámíte se základními příkazy, už trochu tušíte co a jak zapsat, doporučil bych si vymyslet nějaký drobný problém nebo prográmek, který si můžete napsat - ať už proto, že se vám zrovna na něco hodí nebo by to mohlo být zajímavé. Pokud Vás nic nenapadne, klidně se ozvěte na cvičení nebo na mail, něco vymyslíme.
Protože jediným způsobem jak se něco naučit je opakovat, opakovat a opakovat, je dobré využít každou dostupnou příležitost. Máš úkol z jiného předmětu (složitý příklad, laboratorní měření)? Zkus úkol zpracovat pomocí programu! (A program nahraj na github, můžeme jej na příštím cvičení projít a podívat se, zda by šlo něco udělat lépe. A taky brzo zjistíš, že je to takhle vlastně rychlejší a elegantnější).

### Užitečná moudra

Psaní kodu je během programování až ten poslední krok.
Pokud víte co chcete udělat (vynásobit matici vektorem, vydělit každý prvek dvěma, změnit poslední prvek vektoru), správný příkaz už vám vždycky poradí google.
Z počátku se budeme pouze seznamovat s tím, co počítač umí a jak pracuje.
V moment kdy začneme vymýšlet nějaké první skripty a programy, vždy si prvně rozmyslíme co a jak budeme dělat, uděláme si poznánky nebo náčrtky na papír.
Program začneme implementovat od nejjenodušších částí a průběžně zkoušíme a testujeme, jestli vše funguje tak jak má.
