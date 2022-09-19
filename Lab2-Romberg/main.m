disp("Q1.1");
f = @(x) x^2*exp(x);    % @param f ��������
a = 0;                  % @param a ��������
b = 1;                  % @param b ��������
e = 10^(-6);            % @param e ����
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