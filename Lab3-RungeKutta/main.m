disp("Q1.1");
df = @(x,y)x+y;     %@param df 微分方程  
f = @(x) -x-1;      %@param f  精确解
a = 0;              %@param a 区间下限
b = 1;              %@param b 区间上限
alpha = -1;         %@param alpha 初值
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q1.2");
df = @(x,y)-y^2;
f = @(x) 1/(1+x);
a = 0;
b = 1;
alpha = 1;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q2.1");
df = @(x,y) 2*y/x + x^2*exp(x);
f = @(x) x^2*(exp(x)-exp(1));
a = 1;
b = 3;
alpha = 0;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q2.2");
df = @(x,y) (y^2+y)/x;
f = @(x) 2*x/(1-2*x);
a = 1;
b = 3;
alpha = -2;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q3.1");
df = @(x,y) -20*(y-x^2)+2*x;
f = @(x) x^2+exp(-20*x)/3;
a = 0;
b = 1;
alpha = 1/3;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q3.2");
df = @(x,y) -20*y + 20*sin(x) + cos(x);
f = @(x) exp(-20*x)+sin(x);
a = 0;
b = 1;
alpha = 1;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end

disp("Q3.3");
df = @(x,y) -20*(y-exp(x)*sin(x))+exp(x)*(sin(x)+cos(x));
f = @(x) exp(x)*sin(x);
a = 0;
b = 1;
alpha = 0;
for N = [5, 10, 20]
    disp("N="+N);
    RungeKutta(df, a, b, alpha, N, f);
end