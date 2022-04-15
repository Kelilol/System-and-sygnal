function f = chess(N,id)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A=123245878984292835;
N=3;
A = ones(N,N,N)
id='char';
for X=1:N
    for Y=1:N
        for Z =1:N
            b=mod((X+Y+Z),2);
            if b==0
                A(X,Y,Z)=0;
        end
    end
    end
end


  
 if strcmp(id,'digit')



A

else if  strcmp(id,'char')
    A = num2str(A(:)); % переводим числа в символы
    A = reshape(A,N,N,N); % приводим к трехмерному виду
    A
  
end
end
end