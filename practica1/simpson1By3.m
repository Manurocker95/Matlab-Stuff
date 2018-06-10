function [ integral ] = simpson1By3( f,a,b )
%This method uses a second degree polinomic aproxiation, Therefore, it requires three points: "a", "b" and the middlepoint. It is a special case of the general Newton-Cotes formulas.
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 


n=2;
h=(b-a)/n;

%Forma 1:
integral=(b-a)*(f(a)+4*f(a+h)+f(b))/6;   %f(x0)+4f(x1)+f(x2)
%Forma 2:
%ci=[1,4,1];
%valores=[f(a),f(a+h),f(b)];
%integral=(b-a)/6 * sum(ci.*valores)  %  .* = producto elemento a elemento

end

