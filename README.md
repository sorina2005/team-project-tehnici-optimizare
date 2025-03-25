# team-project-tehnici-optimizare

Se consideră o rețea de transport aerian formată dintr-un set de aeroporturi interconectate prin rute disponibile. Fiecare aeroport poate funcționa ca punct de plecare, pentru transportul mărfurilor. Avioanele utilizate pentru transport au capacități limitate și operează pe rute cu costuri și emisii de carbon asociate.

Obiectivul este de a determina:

	1.⁠ ⁠Atribuirea optimă a rutelor pentru fiecare transport astfel încât cererea de marfă să fie satisfăcută.
 
	2.⁠ ⁠Distribuirea eficientă a mărfurilor între avioane pentru a minimiza costurile totale și emisiile de carbon.
 
	3.⁠ ⁠Respectarea constrângerilor de capacitate, timp și disponibilitate a rutelor.
 
Plan de lucru: 
Persoana 1: 	
	-main.m:
* Apelează toate funcțiile necesare pentru a rula proiectul.
* Inițializează rețeaua apelând inițializare.m
* Rulează algoritmii Dijkstra și A*.
* Vizualizează rezultatele.
	-dijkstra.m
* Implementeaza algoritmul Dijkstra clasic pt găsirea rutei cele mai scurte
* Foloseste o lista de noduri vizitate si un vector de distante minime
* Cosntruieste traseul optim

Persoana 2:
	-initializare.m
* Defineste matricea de adiacenta (conexiunile dintre aeroporturi)
* Seteaza coordonatele fiecărui aeroport pt vizualizare
* Returneaza aceste date către main
	-dijkstraOptimizare.m
* Varianta optimizata a Dijkstra, folosind heap binar pt eficiența
* Utilizeaza coada de priorități pt a a alege următorul nod optim

Persoana 3:
	-aStar.m
* Implementează A* pt căutarea rutei optime
* Foloseste o funcție euristic pt a ghida căutarea (euristic.m)
* Returneaza cel mai scurt drum intre aeroporturi
	-grafic.m
* Deseneaza graficul rețelei de transport aerian 
* Reprezinta aeroporturile ca noduri si rutele ca muchii 

Persoana 4:
	-euristic.m
* Definite doua tipuri de euristic pt A* (distanță Euclidiană, distanță Manhattan)
	-traseu.m
* Evidential traseul optim pe harta folosind culori diferite pt fiecare algoritm
