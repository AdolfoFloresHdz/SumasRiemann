%Titulo : Sumas de reimannn
% Descripción: Script para representar la funcion 
	% Autor:Adolfo Flores Hernandez 
	% Fecha: 29/04/20
clc 
%variables que sirven para saber los limites en donde se sacara el area

lim_a=1;
lim_b=4;
%fun= (x.^2)+2;
num_inter=200;

%paso de la funcion
f = inline ("x.^2-1");
%Calculo de ?i o h
h= (lim_b-lim_a)/num_inter;
% m+1 puntos, m intervalos
x= lim_a:h:lim_b;
int=0;
%para cada intervalo
for i=1:num_inter;
  %extremos x(i), x(i+1)
  xm=(x(i)+x(i+1))/2;
  int=int+f(xm)*h;
end 
fprintf ("el area es: ")
fprintf("%d", int);
  
