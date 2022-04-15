function f = Matrix(N,id)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

N=3;
A=randi([0 10],N ,N, N)

VarStr1 = input( ' + or - or * ', 's' );
VarStr2 = input( ' X or Y or Z ', 's' );

 
if strcmp(VarStr1,'+')& strcmp(VarStr2,'X')
   A1(N,N)=0;
    for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)+A(K,M,P);
            end
        end
    end
    
   A1
end

if strcmp(VarStr1,'+')& strcmp(VarStr2,'Y')
    A1(N,N)=0;
    for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)+A(M,K,P);
            end
        end
    end
    
   A1
    
end

if strcmp(VarStr1,'+')& strcmp(VarStr2,'Z')
    A1(N,N)=0;
     for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)+A(M,P,K);
            end
        end
     end
    A1
    
end

if strcmp(VarStr1,'-')& strcmp(VarStr2,'X')
    A1(N,N)=0;
        for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)-A(K,M,P);
            end
        end
    end
    
end


if strcmp(VarStr1,'-')& strcmp(VarStr2,'Y')
    A1(N,N)=0;
    
    for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)-A(M,K,P);
            end
        end
    end
    
end

if strcmp(VarStr1,'-')& strcmp(VarStr2,'Z')
    A1(N,N)=0;
       for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)-A(M,P,K);
            end
        end
    end
end


if strcmp(VarStr1,'*')& strcmp(VarStr2,'X')
    A1(N,N)=1;
        for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)*A(K,M,P);
            end
        end
    end   
    
end

if strcmp(VarStr1,'*')& strcmp(VarStr2,'Y')
        A1(N,N)=1;
        for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)*A(M,K,P);
            end
        end
    end
    
end

if strcmp(VarStr1,'*')& strcmp(VarStr2,'Z')   
    A1(N,N)=1;
        for K=1:N
        
        for M=1:N
            for P=1:N
              A1(M,P)=A1(M,P)*A(M,K,P);
            end
        end
    end
    
end

end