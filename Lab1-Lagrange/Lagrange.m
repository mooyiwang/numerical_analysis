function [P] = Lagrange(X,Y,n)
syms x;
P(x) = 0*x;
for k = 1:n+1
    L = 1.0;
    for j = [1:k-1,k+1:n+1]
        L = L*(x-X(j))/(X(k)-X(j));
    end
    P = P + L*Y(k);
end
end