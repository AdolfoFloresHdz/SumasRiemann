%Titulo : Sumas de reimannn
% Descripción: Script para representar la funcion 
	% Autor:Adolfo Flores Hernandez 
	% Fecha: 29/04/2021
   clc
   pkg load symbolic
  clear
 syms x;
 f =  x.^2+2;
  a = input ('Inicio de intervalo');
  b = input('Fin de intervalo ');
  n = 3-0;
  dx = (b-a)/n;
  resultado = zeros(1,n);
  i =1;
  fs=subs(f,x,(a+i*dx));
  fr = fs * dx ;
  resultado = fr;
  for i=1:n
    fs=subs(f,x,(a+1+dx));
    fr=fs*dx;
    resultado(i+1)=resultado(i)+fr
   endfor 
   fprintf('total es:',double(resultado));
   x=a:0:b;
  