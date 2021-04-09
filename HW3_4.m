%HW3_4
clear; clc;
n=10;
x = linspace(-1,1,n+1);
y = 1./(1+25*(x.^2));
%lag(x,y,x)
X = -1:0.1:1;
Y = 1./(1+25*(X.^2));
S = lag(x,y,X);
plot(X,Y,'-r');
hold on;
plot(X,S,'-b');
legend({'Runge','Lagrange'},'Location','northeast');