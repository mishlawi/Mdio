/*Função objetivo*/
min: 200*x01 + 50*y02 + 100*x02 +
     1000*x21 + 1500*y22 + 500*x22 +
     200*x31 + 50*y32 + 100*x32 +
     800*x41 + 800*y42 + 400*x42 +
     1600*x51 + 400*y52 + 800*x52 +
     300*y71 + 1100*y72 +
     200*x81 + 50*y82 + 100*x82 +
     200*y91 + 400*y92 +
     1000*x101 + 250*y102 + 500*x102 +
     600*x111 + 300*y112 + 300*x112;

// tempo máximo para concluir o projecto
tf <= 21;

// relações de precedência
// na restrição tj >= ti - ri + di, a fun<ão ti - ri + di designa
// o tempo de conclusão da actividade i após a redução da duração,
// de di para -ri + di
arco_i0: t0 >= ti + 0;
arco_i7: t7 >= ti + 0;
arco_i10: t10 >= ti + 0;

arco_02: t2 >= t0 - r0 + 4;
arco_04: t4 >= t0 - r0 + 4;

arco_23: t3 >= t2 - r2 + 7;

arco_3f: tf >= t3 - r3 + 2 ;

arco_42: t2 >= t4 - r4 + 9 ;
arco_45: t5 >= t4 - r4 + 9 ;

arco_53: t3 >= t5 - r5 + 4 ;
arco_5f: tf >= t5 - r5 + 4 ;

arco_74: t4 >= t7 - r7 + 6 ;
arco_78: t8 >= t7 - r7 + 6 ;

arco_85: t5 >= t8 - r8 + 4 ;
arco_89: t9 >= t8 - r8 + 4 ;

arco_9f: tf >= t9 - r9 + 2 ;

arco_108: t8 >= t10 - r10 + 8 ;
arco_1011: t11 >= t10 - r10 + 8;

arco_119: t9 >= t11 - r11 + 7 ;

// reduções máximas permitidas e restrições da modelação das funções por partes
r0 = x01 + x02;
y01 + y02 = 1;
x01 >= 0*y01;
x01 <= 0.5*y01;
x02 >= 0.5*y02;
x02 <= 1*y02;

r2 = x21 + x22;
y21 + y22 = 1;
x21 >= 0*y01;
x21 <= 3*y01;
x22 >= 3*y02;
x22 <= 4*y02;

r3 = x31 + x32;
y31 + y32 = 1;
x31 >= 0*y31;
x31 <= 0.5*y31;
x32 >= 0.5*y32;
x32 <= 1*y32;

r4 = x41 + x42;
y41 + y42 = 1;
x41 >= 0*y01;
x41 <= 2*y01;
x42 >= 2*y02;
x42 <= 3*y02;

r5 = x51 + x52;
y51 + y52 = 1;
x51 >= 0*y51;
x51 <= 0.5*y51;
x52 >= 0.5*y52;
x52 <= 1*y52;

y71 + y72 <= 1;
r7 = x71 + x72;
x71 = 1*y71;
x72 = 2*y72;

r8 = x81 + x82;
y81 + y82 = 1;
x81 >= 0*y81;
x81 <= 0.5*y81;
x82 >= 0.5*y82;
x82 <= 1*y82;

y91 + y92 <= 1;
r9 = x91 + x92;
x91 = 1*y91;
x92 = 2*y92;

r10 = x101 + x102;
y101 + y102 = 1;
x101 >= 0*y101;
x101 <= 0.5*y101;
x102 >= 0.5*y102;
x102 <= 1*y102;

r11 = x111 + x112;
y111 + y112 = 1;
x111 >= 0*y111;
x111 <= 1*y111;
x112 >= 1*y112;
x112 <= 2*y112;

Bin
y01, y02, y21, y22, y31, y32, y41, y42, y51, y52,
y71, y72, y81, y82, y91, y92, y101, y102, y111, y112;
