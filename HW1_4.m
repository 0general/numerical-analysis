%문제 4번 할선법
%f(x) = 0.5*exp(x/3) - sin(x);
clear; clc;
a=0; b=1; tol = 10^(-6);
iter = 0;
tic %수렴까지 가는데 걸리는 시간
while abs(b-a) > tol
    iter = iter+1;
    %tic %근사값 계산별 시간 계산용
    x(iter) = b - ((b-a)/(f(b)-f(a)))*f(b);
    T(iter) = toc;
    a = b;
    b = x(iter);
end
iter
x(iter)
figure(1)
plot(x,'-ro');
xlabel('iteration횟수');
ylabel('근사해');
grid on;

figure(2)
plot(T,'-og');
grid on;




    
