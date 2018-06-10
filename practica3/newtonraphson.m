function root = newtonraphson( f, x, tol, iterations )
%newtonraphson Dada una función contínua f, un valor x inicial, una tolerancia, y un numero de finito de iteraciones a probar, éste método devuelve una raiz de la función 

%Practica 3 Raíces Numéricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

    h = 0.001;
    for i = 0:iterations
        fdiff = (f(x-h) - f(x+h))/(2*h);
        update = f(x) / fdiff;
        x = x + update;
        if abs(update) <= tol
            break;
        end
    end
    root = x;
end

