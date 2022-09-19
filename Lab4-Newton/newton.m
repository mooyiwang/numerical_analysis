function []= newton(f, x0, e1, e2, N)
n = 1;
df = diff(f);
while n <= N 
    F = f(x0);
    DF = df(x0);
    if abs(F) < e1 
        fprintf("ans = %.6f\n",x0);
        fprintf("iteration %d times\n",n);
        return;
    elseif abs(DF) < e2
        disp('Error!');
        return;
    else
        x1 = x0 - (F/DF);
        Tol = abs(x1 - x0);
        if Tol < e1 
            fprintf("ans = %.6f\n",x1);
            fprintf("iteration %d times\n",n);
            return;
        end
        n = n + 1;
        x0 = x1;
    end
end
disp('Error!');
end

        

