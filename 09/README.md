# 9. cvičení - 20. 11. 2024

Vyplnit předpřipravený moodle test nebo vypracovat jeden z následujících úkolů:

## Úkol - interpolace jako obálka dat

Uvažujte následující [datasety](https://github.com/tomashalada/zapg/tree/main/09/ukol_obalka) bodů ve 2D:

dataset 1             |  dataset 2           |  dataset 3
:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/tomashalada/zapg/tree/main/09/ukol_obalka/sample_1.png)  |  ![](https://github.com/tomashalada/zapg/tree/main/09/ukol_obalka/sample_2.png) |  ![](https://github.com/tomashalada/zapg/tree/main/09/ukol_obalka/sample_3.png)

Sestave obálku daného mraku bodů - určete body, které leží na hranici a proveďte jejich interpolaci.

## Úkol - interpolace trajektorie v prostoru: robotické rameno

Uvažujte množinu bodů v prostoru [zadanou v souboru](https://github.com/tomashalada/zapg/blob/main/09/ukol_trajektorie/trajektorie.csv).
Body reprezentují jednotlivá místa, která je potřeba projít (navštívit, interpolovat) - například pomocí robotického ramene.
Pohyb mezi body však musí být hladký. Interpolujte tedy body pomocí nějaké hladké křivky (například pomocí Lagrangeova polynomu).
Vykreslete výsledný proklad, který reprezentuje skutečnou trajektorii ramene.
