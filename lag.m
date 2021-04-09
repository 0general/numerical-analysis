function output = lag(x,y,xx)
n = length(x);
s = 0;
for i=1:n
    product=y(i);
    %Li(x) 구하는 부분
    for j=1:n
        if i~=j
            product=product.*(xx-x(j))/(x(i)-x(j));
        end
    end
    s = s+product;
end
output=s;