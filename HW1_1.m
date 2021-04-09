clear;
clc;
x = 1.37;
a = round(x^3,3,'significant')
b = round(x^2,3,'significant')
c = round(-7*b,3,'significant')
d = round(8*x ,3,'significant')
e = a + c + d - 0.35
y = round(e,3,'significant')
%계산 결과 확인용 반올림 유효숫자