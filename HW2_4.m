%4번 문제 
% U'Ux=b 1. U'y=b 2. Ux=y
clear; clc;
A = [6,15,55;15,55,225;55,225,979]
B = [1 ; 2; 3]
n= length(A);
u = zeros(n,n);
for i = 1 : n
    if (i ==1)
        u(i,i) = sqrt(A(i,i));
        for j = i+1 : n
            u(i,j) = A(i,j)/u(i,i);
        end
    else
        %u(i,i)계산용 temp_1
        temp_1 = 0;
        for k=1 : i-1
            temp_1 = temp_1 + u(k,i)^2;
        end
        u(i,i) = sqrt(A(i,i)-temp_1);
        for j = i+1 : n            
            %u(i,j)계산용 temp_2
            temp_2 = 0;
            for k=1 : i-1                
                temp_2 = temp_2 + u(k,i)*u(k,j);
            end
            u(i,j) = (A(i,j)-temp_2)/u(i,i);
        end    
    end
end

L=u';
%전진대입법 y구함 1. U'y=b Ly=B
y(1) = B(1)/L(1,1);
for i = 2 : n
    s = 0;
    for k = 1:i-1
        s = s+L(i,k)*y(k);
    end
    y(i) = (B(i)-s)/L(i,i);
end
y
%역진대입법 x구함 2. Ux=y
x(n) = y(n)/u(n,n);
for i = n-1:-1:1
    s = 0;
    for k = i+1:n
        s = s+u(i,k)*x(k);
    end
    x(i) = (y(i)-s)/u(i,i);
end
x