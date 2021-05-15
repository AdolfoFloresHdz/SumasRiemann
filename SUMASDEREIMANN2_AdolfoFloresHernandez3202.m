%Titulo : Sumas de reimannn
% Descripción: Script para representar la funcion 
	% Autor:Adolfo Flores Hernandez 
	% Fecha: 29/04/20
clc 
clc 
%variables que sirven para saber los limites en donde se sacara el area

a=1;
b=4;
%fun= (x.^2)+2;
inter=200;

%paso de la funcion
f = inline ("x.^2+2");
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
