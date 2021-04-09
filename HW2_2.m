%2번 문제
%Ax = B
clear; clc;
A = [ 1 2 2 ; 4 4 2 ; 4 6 4 ]
B = [ 3 ; 6 ; 10 ]
answer = A\B

disp("부분 피봇팅을 시작합니다.")
n = length(B);

for i = 1 : n-1
    %A에 마이너스 원소가 존재하는 것 포함
    AC = abs(A);
    %i열의 최대값 MX
    [MX,l] = max(AC(i:end,i));
    l = l + i-1; %최대값이 존재하는 위치
    fprintf('%d열의 최대값은 %d입니다.\n',i,MX)
    if (l ~= i)
        %A자리바꿈
        temp = A(i,:);
        A(i,:) = A(l,:);
        A(l,:) = temp;
        %B자리 바꿈
        temp_1 = B(i);
        B(i) = B(l);
        B(l) = temp_1;
    end
    
    %위삼각행렬화
    for j = i+1 : n
        B(j) = B(j)-B(i)*(A(j,i)/A(i,i));
        A(j,:) = A(j,:)-A(i,:)*(A(j,i)/A(i,i));
    end
end
A
B

%역진대입법
x(n) = B(n)/A(n,n);
for i = n-1:-1:1
    s = 0;
    for k = i+1:n
        s = s+A(i,k)*x(k);
    end
    x(i) = (B(i)-s)/A(i,i);
end
x

