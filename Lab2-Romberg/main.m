disp("Q1.1");
f = @(x) x^2*exp(x);    % @param f 待积函数
a = 0;                  % @param a 积分下限
b = 1;                  % @param b 积分上限
e = 10^(-6);            % @param e 精度
Romberg(f,a,b,e);

disp("Q1.2");
f = @(x) exp(x) *sin(x);
a = 1;
b = 3;
e = 10^(-6);
Romberg(f,a,b,e);

disp("Q1.3");
f = @(x) 4/(1+x^2);
a = 0;
b = 1;
e = 10^(-6);
Romberg(f,a,b,e);

disp("Q1.4");
f = @(x) 1/(1+x);
a = 0;
b = 1;
e = 10^(-6);
Romberg(f,a,b,e);