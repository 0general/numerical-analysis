%문제 2번 
%n은 항의 개수 처음 4개 항이라면 n=4
function y = mac(x,n)
    y = 0;
    for i=1:n
        y = y + (-1)^(i-1)/factorial(2*(i-1));
    end
end