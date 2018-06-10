%Practica 4 Ra�ces Num�ricas de Funciones No Lineales
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 


%% Ejercicio 1: Resuelve el problema diferencial de Cauchy por el m�todo de Euler expl�cito con paso de discretizaci�n h=0.2
f = @(y,t) y-t.^2+1;
a=0;
b=1;
h=0.2;
y0=0.5;

%Puntos del Soporte
t= a:h:b
%Solucion exacta
exact_y = (t+1).^2 - 0.5.*exp(t)
%Valores Aproximados de la solucion 
y_s = Euler(f,t,y0)
%Error relativo cometido
error=abs(y_s-exact_y).*100./exact_y

%Plotting Resultados
figure;
hold on;
plot(t,exact_y,'-ro')
plot(t,y_s,'-mo')
plot(t,0,'go')
hold off;
title('Aproximaci�n y soluci�n exacta de m�todo de Euler para un problema diferencial de Cauchy');
legend('Soluci�n Exacta','Soluci�n Aproximada','Puntos Soporte','location','northwest');



%% Comparando Operaciones con Varios Pasos de Discretizaci�n
f = @(y,t) y-t.^2+1;
a=0;
b=1;
y0=0.5;


hs=[0.2 0.1 0.05 0.01 0.001];


%Plotting Resultados
figure;
hold on;
for i=1:size(hs,2)
    h = hs(i);
    t = a:h:b;
    y_s = Euler(f,t,y0);
    exact_y = (t+1).^2 - 0.5.*exp(t);
    error=abs(y_s-exact_y);%./yexacta
    errorPorCien=abs(y_s-exact_y).*100./exact_y;
    
%     figure(i);
%     
%     plot(t,y_s,'-mo')
%     plot(t,yexacta,'-ro')
    plot(t,error)
end
title('Comparaci�n del error relativo al variar el paso de discretizaci�n h');
legend('h=0.2','h=0.1','h=0.05','h=0.01','h=0.001','location','northwest');

hold off;


%% Ejercicio 2: Resuelve el problema diferencia de Cauchy de un sistema masa muelle amortiguador


M=10;    %Masa  [kg]
B=50;   %Constante Amortiguador  [N*s^2/m^2]
k=200;  %Constante Muelle   [N/m]

f = @(u,v)[v; (-B/M)*abs(v)*v-(k/M)*u];
a=0;        %intervalo (a,b)
b=0.1;      %intervalo (a,b)
h=0.05;     %Paso de discretizaci�n
y0=[0; 1];  %u(0) y u'(0)
t = a:h:b;  

Y = EulerVectorial(f,t,y0)

%Plotting Resultados
figure;
hold on;
plot(t,Y(1,:));  %gr�fica de u
plot(t,Y(2,:));  %gr�fica de u'
hold off;
title('Resolucion de sistema masa muelle amortiguador');
legend('u','u`','location','northeast');
