function [ xik ] = GaussSeidelCompound(  A, b, xik_1, iterations,tolerency )
%   A: matrix, b:solution vector. xik_1:solutions vector in previous
%   iteration, iterations:number of times to repeat Jacobi Method,
%   tolerancy: small epsilon for stoping, consider solution converged.

%Practica 2 Resoluci�n Num�rica de Sistemas Lineales
%Micah Paul Davis, Manuel Rodr�guez Matesanz and Andr�s Casado Elvira
%Enero de 2018 


%t = tolerency*ones(1,length(xik_1)); %[epsilon,epsilon,epsilon....]
aux = ones(1,length(xik_1));    % array of ones used to check if 
xik=zeros(1,length(xik_1));     % start off with empty solution.
xik=xik_1;
for k=1:iterations
    %k;
    xik_1 = xik;
    xik=GaussSeidelIteration(A,b,xik);
    r=(abs(xik(1,:)-xik_1(1,:)))<= tolerency;  %creates a vector of 1 if less then tolerence, 0 if more.
    stop=isequal(aux,r);    % if r is all ones, then stop
    if stop%isequal(aux, (abs(xik(1,:)-xik_1(1,:)))< tolerency)
        break
    end
end
end

