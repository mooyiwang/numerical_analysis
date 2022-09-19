disp("Question 1.1");
f1 = @(x)1/(1+x^2);
x=[0.75 1.75 2.75 3.75 4.75];
for n=[5,10,20]
   disp("n="+n);
   f(f1,-5,10,n,x,5);
end

disp("Question 1.2");
f2 = @(x)exp(x);
x=[-0.95 -0.05 0.05 0.95];
for n=[5,10,20]
   disp("n="+n);
   f(f2,-1,2,n,x,4);
end

disp("Question 2.1");
f1 = @(x)1/(1+x^2);
x=[-0.95 -0.05 0.05 0.95];
for n=[5,10,20]
   disp("n="+n);
   f(f1,-1,2,n,x,4);
end

disp("Question 2.2");
f2 = @(x)exp(x);
x=[-4.75 -0.25 0.25 4.75];
for n=[5,10,20]
   disp("n="+n);
   f(f2,-5,10,n,x,4);
end

disp("Question 4.1");
f3 = @(x)x^(1/2);
x=[5 50 115 185];
X=[1 4 9];
f_2(f3,X,2,x,4);

disp("Question 4.2");
f3 = @(x)x^(1/2);
x=[5 50 115 185];
X=[36 49 64];
f_2(f3,X,2,x,4);

disp("Question 4.3");
f3 = @(x)x^(1/2);
x=[5 50 115 185];
X=[100 121 144];
f_2(f3,X,2,x,4);

disp("Question 4.4");
f3 = @(x)x^(1/2);
x=[5 50 115 185];
X=[169 196 225];
f_2(f3,X,2,x,4);
