syms x;
f1(x) = cos(x) - x;                     % @param f �����Է���
f2(x) = exp(-x) - sin(x);
f3(x) = x- exp(-x);
f4(x) = x^2 - 2*x*exp(-x) + exp(-2*x);
e1 = 10^(-6);                           % @param e1 ����1
e2 = 10^(-4);                           % @param e2 ����2
N1 = 10;                                % @param N ����������
N2 = 20;
x01 = pi/4;                             % @param x0 ��ֵ
x02 = 0.6;
x03 = 0.5;
x04 = 0.5675;

disp("����һ��1)");
newton(f1, x01, e1, e2, N1);   

disp("����һ��2)");
newton(f2, x02, e1, e2, N1);

disp("�������1)");
newton(f3, x03, e1, e2, N1);

disp("�������2)");
newtonForDoubleRoots(f4, x03, e1, e2, N2);
