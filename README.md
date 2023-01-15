# Image-Interpolation

A doua tema la Metode Numerice. Am avut de realizat interpolarea unor imagini pe baza unor algoritmi specifici.
La task-ul 1:
  -functia "proximal_2x2" aplica interpolare proximala pe o imagine alb negru astfel: calculeaza distantele posibile dintre 2 puncte care au ca si coordonate valorile din matricea de pixeli, respectiv punctele incadratoare ale imaginii; compara apoi distanta dintre pozitia pe care se afla punctul nostru si primul punct incadrator. In cazul in care pozitia depaseste jumatate din dimensiunea maxima a matricei de pixeli, atunci se trece in urmatoare jumatate. Acesta este rationamentul pentru fiecare coloana in parte, cel pentru linii fiind absolut analog.
  -functia "proximal_2x2_RGB" foloseste functia "proximal_2x2" pentru concatenarea celor 3 canale de culoare, iar la final intoarce imaginea colorata.
  -functia "proximal_resize" redimensioneaza imaginea alb-negru de la dimensiunea mxn la dimensiunea pxq. Algoritmul are la baza folosirea matricei de transformare "T" ce are ca si componente cei doi factori de scalare "s_x" si "s_y" calculati cu ajutorul celor 2 formule din enuntul temei.
  -functia "proximal_resize_RGB" foloseste functia "proximal_resize" pentru redimensionarea unei imagini colorate.
  -functia "proximal_coef" calculeaza coeficientii pentru interpolarea proximala a unui set finit dat de numere. Mai pe scurt, se rezolva sistemul de ecuatii "A * a = b".
  -functia "proximal_rotate" roteste imaginea alb-negru sub un anumit unghi dat folosind  matricea de rotatie "T" ce contine doar valorile "c" si "s", acestea reprezentand sinusul, respectiv cosinusului unghiului de rotatie dat. Se afla punctele incadratoare ale imaginii cu ajutorul functiilor "floor" si "ceil". Cu ajutorul functiei "proximal_coef" se determina coeficientii de interpolare cu ajutorul carora calculam valoarea interpolata a pixelului.
  -functia "proximal_rotate_RGB" foloseste functia "proximal_rotate" pentru a roti o imagine colorata.

La task-ul 2:
  -functiile "fx"si "fy" calculeaza derivatele partiale de ordin 1 ale functiei de 2 variabile "f" in  "x", respectiv "y", iar functia "fxy" calculeaza derivatele partiale de ordin 2 ale functiei "f" in raport cu "x" si "y".
  -functia "precalc_d" foloseste functiile "fx", "fy" si "fxy" pentru calculul derivatelor elementelor din matricile "Ix" "Iy" si "Ixy" in raport cu "x" si "y".
  -functia "bicubic_coef" calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate folosindu-se de matricile "B" si "C"(din enuntul problemei) si matricea "M" care are ca elemente valorile lui "f" in punctele date
si valori ale derivatelor in raport cu "x" si "y".
  -functia "bicubic_resize" foloseste functiile "precalc_d" si "bicubic_coef" pentru redimensionarea imaginii, adica utilizand interpolarea bicubica prezentata in enuntul temei.
  -functia "bicubic_resize_RGB" foloseste functia "bicubic_resize" pentru redimensionarea unei imagini colorate.
