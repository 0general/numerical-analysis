%HW3_3_2
clear; clc;
% a,b,c,d,e를 변수 취급
x = [1.02;0.95;0.87;0.77;0.67;0.56;0.44;0.30;0.16;0.01];
y = [0.39;0.32;0.27;0.22;0.18;0.15;0.13;0.12;0.13;0.15];
y2 = y.*y;
xy = x.*y;
x2 = x.*x;
o = ones(length(x),1);
%(A'A)가 되기위해 
A = [y2,xy,x,y,o];
if (rank(A'*A)==5) 
    %w = [a;b;c;d;e]
    w = (A'*A)\(A'*x2);
    disp('a는');
    disp(w(1));
    disp('b는');
    disp(w(2));
    disp('c는');
    disp(w(3));
    disp('d는');
    disp(w(4));
    disp('e는');
    disp(w(5));
end

%정보손실이 있는지 확인
% 역행렬이 존재하는가?
rb = inv((A'*A))


