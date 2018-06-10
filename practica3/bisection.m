function root = bisection( f, a, b, tol )
%bisection Dada una funci�n cont�nua f, un intervalo [a,b] y una tolerancia, �ste m�todo devuelve una raiz perteneciente al intervalo 

%Practica 3 Ra�ces Num�ricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 

    %Calcula solo si existe el cero, suponiendo que la funcion f es cont�nua
    if sign(f(a)) ~= sign(f(b))
        %numero de iteraciones
        iterations = log( (b-a)/tol ) / log( 2 );
        iterations = ceil( iterations );
        
        fmi = 0;
        for i = 0:iterations
            fa = f(a);
            fb = f(b);
            m = (a+b)/2;
            fm = f(m);

            if abs(fm - fmi) <= tol
                root = m;
                break;
            elseif sign(fa) == sign(fm)
                a = m;
            else
                b = m;
            end
            fmi = fm;
        end
        root = m;
    end
end

