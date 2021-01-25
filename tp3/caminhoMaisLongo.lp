/* Função objetivo*/
max: 4 x02 + 4 x04 + 7 x23 + 2 x3fim + 9 x42 + 9 x45 + 4 x53 + 4 x5fim +
 6 x74 + 6 x78 + 4 x85 + 4 x89 + 2 x9fim + 8 x108 + 8 x1011 + 7 x119;

/*Restrições de precedência*/
vertice_i: xini0 + xini7 + xini10 = 1;
vertice_0: xini0 = x02 + x04;
vertice_2: x02 + x42 = x23;
vertice_3: x23 + x53 = x3fim;
vertice_4: x04 + x74 = x42 + x45;
vertice_5: x45 + x85 = x53 + x5fim;
vertice_7: xini7 = x74 + x78;
vertice_8: x78 + x108 = x85 + x89;
vertice_9: x89 + x119 = x9fim;
vertice_10: xini10 = x108 + x1011;
vertice_11: x1011 = x119;

Bin
xini0, xini7, xini10, x02, x04, x23, x3fim, x42, x45, x53,
x5fim, x74, x78, x85, x89, x9fim, x108, x1011, x119;
