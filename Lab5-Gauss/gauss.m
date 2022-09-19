function [] = gauss(n, A, b)
x = zeros(n, 1);
for k = 1:n
    c = abs(A(k:end,k)); %取矩阵A的第k列的k到最后的数据，并将所有数据取绝对值
    [MAX,pm] = max(c);
    if MAX == 0          %列主元为0，奇异矩阵
        disp("Error!The matrix is singular!");
        return;
    end
    p = pm + k - 1;
    if p ~= k            %交换pk两行
        A([k,p],:) = A([p,k],:);
        b([k,p],:) = b([p,k],:);
    end
    for i = k+1:n        %进行消元
        m = A(i,k)/A(k,k);
        A(i,:) = A(i,:) - m*A(k,:);
        b(i) = b(i) - m*b(k);
    end
end
x(n) = b(n)/A(n,n);
for k = n-1:-1:1        %回代
    sum = 0;
    for j = k+1:n
        sum = sum + A(k,j)*x(j);
    end
    x(k) = (b(k) - sum)/A(k,k);
end
disp("ans = ");
disp(x);
end
            
    
    
        


