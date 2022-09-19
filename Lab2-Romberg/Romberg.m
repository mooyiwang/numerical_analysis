function []=Romberg(f,a,b,e)
h = b - a;
i = 1;
T=[];
T(1,1)= 0.5*h*(f(a)+f(b));
while true
    j = 2^(i-1);
    sum = 0;
    for k = 1:j
        sum = sum + f(a+(k-1/2)*h);
    end
    T(1,i+1) = 0.5*( T(1,i-1+1) + h*sum );
    for m = 1:i
        k = i - m;
        T(m+1,k+1) = ( 4^m * T(m-1+1,k+1+1) -T(m-1+1,k+1))/(4^m -1);
    end
    if abs(T(i+1,0+1)-T(i-1+1,0+1)) < e
        fprintf("近似值:%.12f\n",T(i+1,0+1));
        disp("T数表:");
        disp(T);
        return;
    end
    h = h/2;
    i = i+1;
end
return;
end
