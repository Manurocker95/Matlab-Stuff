function [ Integral ] = compoundMilne( f,a,b,n )
%compoundMilne This function subdivides the function f and the interval (a,b) into n subdivisions, then applies the milne method to each division individually, accumulating a final result. 
%Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

    Integral=0;
    x=linspace(a,b,n);

    for i=1:length(x)-1
      Integral=Integral+milne(f,x(i),x(i+1));
    end

end
