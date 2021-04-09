%문제 3번
clear;
clc;
for n=1:10
    x(n)=n;
    real = factorial(n);
    approx = sqrt(2*pi*n)*((n/exp(1))^n);
    ocha(n) = abs((real-approx)/real);
end
semilogy(x,ocha,'-og');
xlabel('n값');
ylabel('상대 오차');
grid on;