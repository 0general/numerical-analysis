%HW3_1
% multiple linear regression
% n = 9
clear;
clc;
a = [0,1,1,2,2,3,3,4,4];
b = [0,1,2,1,2,1,2,1,2];
c = [15.1,17.7,12.7,25.6,20.5,35.1,29.7,45.4,40.2];
sigma_a = 0; sigma_b = 0; sigma_c = 0;
sigma_a2 = 0; sigma_b2 = 0;
s_ab = 0; s_ac = 0; s_bc = 0;
for i = 1 : length(a)
    sigma_a = sigma_a + a(i);
    sigma_b = sigma_b + b(i);
    sigma_c = sigma_c + c(i);
    sigma_a2 = a(i).*a(i) + sigma_a2;
    sigma_b2 = b(i).*b(i) + sigma_b2;
    s_ab = a(i).*b(i) + s_ab;
    s_ac = a(i).*c(i) + s_ac;
    s_bc = b(i).*c(i) + s_bc;
end
%왼쪽 행렬 A, 오른쪽 행렬 B
A = [9, sigma_a, sigma_b;sigma_a,sigma_a2,s_ab;sigma_b,s_ab,sigma_b2];
B = [sigma_c;s_ac;s_bc];
% 𝒚 = 𝒂𝟎 + 𝒂𝟏𝒙𝟏 + 𝒂𝟐𝒙는
% c = k(1) + k(2)a + k(3)b로
k = A\B;
r = zeros(1,length(a));
sr = 0;
for j = 1:length(a)
    r(j) = k(1) +k(2).*a(j) + k(3).*b(j) -c(j);
    sr = sr + r(j)^2;
end

[X,Y] = meshgrid(a,b);
Z = k(1) + k(2).*X + k(3).*Y;
mesh(X,Y,Z);
hold on;
scatter3(a,b,c,'r');

disp("residual의 제곱의 합은 ");
disp(sr);
