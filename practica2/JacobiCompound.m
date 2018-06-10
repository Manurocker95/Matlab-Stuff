function [ xik ] = JacobiCompound( A, b, xik_1, iterations,tolerency)
%JacobiCompound 
%   A: matrix, b:solution vector. xik_1:solutions vector in previous
%   iteration, iterations:number of times to repeat Jacobi Method,
%   tolerancy: small epsilon for stoping, consider solution converged.

%Practica 2 Resolución Numérica de Sistemas Lineales
%Micah Paul Davis, Manuel Rodríguez Matesanz and Andrés Casado Elvira
%Enero de 2018 

%t = tolerency*ones(1,length(xik_1)); %[epsilon,epsilon,epsilon....]
aux = ones(1,length(xik_1));      % array of ones used to check if 
xik = zeros(1,length(xik_1));     % start off with empty solution.
xik=xik_1;
for k=1:iterations
    %k
    xik_1 = xik;
    xik=JacobiIteration(A,b,xik);
    r=(abs(xik(1,:)-xik_1(1,:)))<= tolerency;  %creates a vector of 1 if less then tolerence, 0 if more.
    stop=isequal(aux,r);    % if r is all ones, then stop
    if stop%isequal(aux, (abs(xik(1,:)-xik_1(1,:)))< tolerency)
        break
    end
end



%returns 1 if all the elements in b are less then all the elements in b
%a nad b have to have same length.
%isequal(aux, xik(1,:)< t(1,:)) % for each value in the vector
%isequal(aux, xik(1,:)< tolerency) % less then 1 escalar value.
end

