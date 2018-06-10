%% Practica 1 Integración Numérica
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

clear
clc
clf
a = 0; b = 2*pi;
h = 0.001;
x = a:h:b;
f = @(x)cos(x.^2 - 1);
y = f(x);


%Reference Value:
IntegralMatLab = trapz(x,y)

%Rectangle
    Ileft = rectangleLeft(f,a,b)
    IRight= rectangleRight(f,a,b)
    IMiddle= rectangleMiddle(f,a,b)
    
%Rectangle plotting
    yrectLeft = ones(size(x)) * f(a);
    yrectRight = ones(size(x)) * f(b);
    yrectMiddle = ones(size(x)) * f((a+b)/2);
    
    figure(1);
    hold on;
    plot(x,y);
    plot(x,yrectLeft);
    plot(x,yrectRight);
    plot(x,yrectMiddle);
    %plot(x,IntegralMatLab);
    scatter((a+b)/2, f((a+b)/2)); %middle point
    hold off;
    title('Integración Numérica, Ejercicio 1: Método del rectángulo  f=cos(x^2 - 1)');
    legend('f','rectLeft','rectRight','rectMiddle','midPoint','Location','southwest');
    
%Trapezoide
    ITrap = trapezoide(f,a,b)
%Trapezoide plotting
    ftrap = @(x) ((f(b) - f(a))/(b-a))*x + f(a);
    ytrap = ftrap(x);
    
    figure(2);
    hold on;
    plot(x,y);
    plot(x,ytrap);
    hold off;
    title('Integración Numérica, Ejercicio 2: Método del trapecio  f=cos(x^2 - 1)');
    legend('f','trap','Location','southwest');

% %Simpson1By3
    ISimpson1By3 = simpson1By3(f,a,b)
    
%%  Optativa: Milne

a=1; b=3; n=[2,4,8,16,32];
f =@(x)cos(x)-x*sin(x);

%Calculate using the 5 different values of n
for i=1:5
  subsegments = n(i)
  milne = compoundMilne(f,a,b,subsegments)
end

