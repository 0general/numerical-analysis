%3번 문제
clear; clc;
A = [6,15,55;15,55,225;55,225,979]
u = zeros(3,3); n= length(A);
for i = 1 : n
    if (i ==1)
        u(i,i) = sqrt(A(i,i));
        for j = i+1 : n
            u(i,j) = A(i,j)/u(i,i);
        end
    else
        %u(i,i)계산용 temp_1
        temp_1 = 0;
        for k=1 : i-1
            temp_1 = temp_1 + u(k,i)^2;
        end
        u(i,i) = sqrt(A(i,i)-temp_1);
        for j = i+1 : n            
            %u(i,j)계산용 temp_2
            temp_2 = 0;
            for k=1 : i-1                
                temp_2 = temp_2 + u(k,i)*u(k,j);
            end
            u(i,j) = (A(i,j)-temp_2)/u(i,i);
        end    
    end
end
disp("U는")
disp(u)
disp("U'는")
disp(u')
disp("choleksy한 결과는")
disp(u'*u)

