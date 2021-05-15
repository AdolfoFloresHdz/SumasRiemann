%Titulo : Sumas de reimannn2
% Descripción: Script para representar la funcion 
	% Autor:Adolfo Flores Hernandez 
	% Fecha: 29/04/2021
clc 
clc load simbolic
clear
%variables que sirven para saber los limites en donde se sacara el area
a=-2;
b=1;
%fun= -x+1;
inter=200;
%paso de la funcion
f = inline ("-x+1");
%Calculo de ?i o h
h= (b-a)/inter;
% m+1 puntos, m intervalos
x= a:h:b;
int=0;
%para cada intervalo
for i=1:inter;
  %extremos x(i), x(i+1)
  xm=(x(i)+x(i+1))/2;
  int=int+f(xm)*h ;
end 

a2=1;
b2=3;
%fun= -x+1;
inter2=200;
%paso de la funcion
f2 = inline ("-x+1");
%Calculo de ?i o h
h2= (b2-a2)/inter2;
% m+1 puntos, m intervalos
x2= a2:h2:b2;
int2=0;
%para cada intervalo
for i2=1:inter2;
  %extremos x(i), x(i+1)
  xm2=(x2(i2)+x2(i2+1))/2;
  int2=int2+f2(xm2)*h2 ;
end 
y=abs(int2);

fprintf("el area es:  ");
fprintf("%d", int+y);
