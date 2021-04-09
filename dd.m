clefunction y=dd(A) %y = 1 or 0
    y = 1;
    for i =1 : size(A,1)
       %dia는 diagonal
       dia = 0;
       %sum_r은 나머지 합
       sum_r = 0;
       for j = 1 : size(A,2)
           if (i == j)
               %dia는 diagonal 
               dia = abs(A(i,j));
           else
               sum_r = sum_r + abs(A(i,j));
           end 
       end
       if (dia <= sum_r)
           y = 0;
           break;
       end
    end
end