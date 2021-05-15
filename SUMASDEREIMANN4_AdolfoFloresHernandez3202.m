%Titulo : Sumas de reimannn4
% Descripción: Script para representar la funcion 
	% Autor:Adolfo Flores Hernandez 
	% Fecha: 29/04/2021
  % f (x) = x ^ 2 - 2x + 3 en [?2, 3] con 8, 16, 32 y 48 rectángulos respectivamente
clc
   clc 
%variables que sirven para saber los limites en donde se sacara el area

a=2;
b=5;
%fun= (x.^2)+2;
inter=200;

%paso de la funcion
f = inline ("x*(4)+5 ");
%Calculo de ?i o h
h= (b-a)/inter;
% m+1 puntos, m intervalos
x= a:h:b;
int=0;
%para cada intervalo
for i=1:inter;
  %extremos x(i), x(i+1)
  xm=(x(i)+x(i+1))/2;
  int=int+f(xm)*h;
   
end 
fprintf ("el area es: ")
fprintf("%d", int);
