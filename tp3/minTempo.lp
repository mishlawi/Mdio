/*Função Objetivo*/
min: tfim;

/*Restrições de precedência*/
t0 >= tini + 0; //A actividade ini precede a actividade 0
t2 >= t0 + 4; //A actividade 0 precede a actividade 2
t2 >= t4 + 9; //A actividade 4 precede a actividade 2
t3 >= t2 + 7; //A actividade 2 precede a actividade 3
t3 >= t5 + 4; //A actividade 5 precede a actividade 3
t4 >= t0 + 4; //A actividade 0 precede a actividade 4
t4 >= t7 + 6; //A actividade 7 precede a actividade 4
t5 >= t4 + 9; //A actividade 4 precede a actividade 5
t5 >= t8 + 4; //A actividade 8 precede a actividade 5
t7 >= tini + 0; //A actividade ini precede a actividade 7
t8 >= t7 + 6;  //A actividade 7 precede a actividade 8
t8 >= t10 + 8; //A actividade 10 precede a actividade 8
t9 >= t8 + 4; //A actividade 8 precede a actividade 9
t9 >= t11 + 7; //A actividade 11 precede a actividade 9
t10 >= tini + 0; //A actividade ini precede a actividade 10
t11 >= t10 + 8; //A actividade 10 precede a actividade 11
tfim >= t3 + 2; //A actividade 3 precede a actividade fim
tfim >= t5 + 4; //A actividade 5 precede a actividade fim
tfim >= t9 + 2; //A actividade 9 precede a actividade fim

/*restrições de integralidade*/
int tini, t0, t2, t3, t4, t5, t7, t8, t9, t10, t11, tfim;