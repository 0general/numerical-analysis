%문제 2번
clear;
clc;
% format long
% y = mac(1,4)
% cos(1)
% cutocha = cos(1)-y

%%문제 2번 (b)
for n=1:10
    x(n)=n;
    approx = mac(1,n);
    ocha(n) = abs(cos(1)-approx);
end
semilogy(x,ocha,'-or');
xlabel('n값');
ylabel('절단오차');
grid on;