%% Ejercicios Personales para casa
% Micah Paul Davis


%% Formulas del rectangulo
%Polinomio constatnte (grado 0, n=0, 1 punto)

clear
a=0; b=1;
x=a:0.01:b;
f =@(x)exp(x);
%
    %f =exp(x)
    %I=trapz(x,f)
%or 
%   f =@(x)exp(x)
%   Ix=integral(f,a,b)

%Punto en extremo izquierdo: pn(x) = f(a)
    Ileft = f(a)*(b-a);
%Punto en extremo derecho: pn(x) = f(b)
    Iright = f(b)*(b-a);
%Punto en extremo derecho: pn(x) = f(b)
    Imiddle = f((b-a)/2)*(b-a);

    
   
    
%% Formula del Trapecio:
clear
a=0; b=1;
x=a:0.01:b;
f =@(x)exp(x)

Itrapecio=(b-a)*(f(b)+f(a))/2
I2=trapz(x,exp(x))
%Rtrapecio=-f''(e)*(b-a)^3/12



%% Formula del Simpson 1/3, cerrada:
clear
a=0; b=1;
x=a:0.01:b;
f =@(x)exp(x)
n=2;
h=(b-a)/n;
%Forma 1:
I=(b-a)*(f(a)+4*f(a+h)+f(b))/6   %f(x0)+4f(x1)+f(x2)
%Forma 2:
ci=[1,4,1];
valores=[f(a),f(a+h),f(b)];
I2=(b-a)/6 * sum(ci.*valores)  %  .* = producto elemento a elemento




 %% Ejercicio en clase
clear
clc
a=0; b=2*pi;
x=a:0.01:b;
f =@(x)cos(x.^2-1);
%Rectangle
    Ileft = rectangleLeft(f,a,b)
    IRight= rectangleRight(f,a,b)
    IMiddle= rectangleMiddle(f,a,b)
%Trapezoide
    ITrap = trapezoide(f,b,a)
    Itrap2= trapz(x,cos(x.^2-1))
    % Se difieren mucho porque el nuestro hace un trapecio con dos puntos,
    % a y b. el de matlab, coge x, que son los miles de puntitos, mucho mas
    % aproximado.
    
%Simpson1By3
    simpson=simpson1By3(f,a,b)
    
%%  Optativa: Milne
clear
clc
a=1; b=3, n=[2,4,8,16,32]; index=5;
f =@(x)cos(x)-x*sin(x);
solution=compoundMilne(f,a,b,n(index))

