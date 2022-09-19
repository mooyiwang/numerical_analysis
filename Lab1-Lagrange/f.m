function []=f(f,a0,L,n,x,k)
h = L/n;
X = zeros(1,n+1);
Y = zeros(1,n+1);
y = zeros(1,k);
true = zeros(1,k);
for i=1:n+1
    X(i)= a0 + (i-1)*h;
    Y(i)= f(X(i));
end
P = Lagrange(X,Y,n);
for i=1:k
    y(i) = P(x(i));
    true(i) = f(x(i));
end
% disp(f);
% disp(P);
% disp(["��ֵ�㣺"+num2str(x)]);
% disp(["����ֵ��"+num2str(y)]);
% disp(["��ʵֵ��"+num2str(true)]);
offset = true - y;
disp("��ֵ�㣺");
disp(x);
disp("����ֵ��");
disp(y);
disp("��ʵֵ��");
disp(true);
disp("ƫ�");
disp(offset);
end