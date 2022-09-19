function [] = RungeKutta(df,a,b,alpha,N,f)
x = [];
y = [];
true = [];      %@param true 真实值
x(1) = a;
y(1) = alpha;
h = (b-a)/N;
for n=1:N
   K1 = df(x(n-1+1),y(n-1+1));
   K2 = df((x(n-1+1)+h/2), (y(n-1+1)+h*K1/2));
   K3 = df((x(n-1+1)+h/2), (y(n-1+1)+h*K2/2));
   K4 = df((x(n-1+1)+h), (y(n-1+1)+h*K3));
   x(n+1) = x(n) + h;
   y(n+1) = y(n) + h*(K1+2*K2+2*K3+K4)/6;
end
for i = 1:N+1
    true(i) = f(x(i));
end
disp("x=");
disp(x);
disp("近似值：");
disp(y);
disp("精确值：");
disp(true);
return;
end