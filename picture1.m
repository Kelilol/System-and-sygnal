function [ output_args ] = picture1 ( input_args )

I = imread('C:\Users\edigarev.2019\Desktop\123.jpg');
[h w z] = size(I); %[x y w]
 VarStr1 = input( ' красный or зеленый or синий ', 's' );


if strcmp(VarStr1,'красный')
for i=1:h
for j=1:w   
K= I(i, j, 1)
K= I(i, j, 2)
K= I(i, j, 3)
Y=  K;
COLOR(i, j, 1) = K;
COLOR(i, j, 2) = 0;
COLOR(i, j, 3) = 0; 
end
end
imwrite(COLOR, 'C:\Users\edigarev.2019\Desktop\red.jpg');
end

if strcmp(VarStr1,'зеленый')
for i=1:h
   for j=1:w   
K= I(i, j, 1);
Y=  K;
COLOR(i, j, 1) = K;
COLOR(i, j, 2) = K+100;
COLOR(i, j, 3) = K; 
end
end
imwrite(COLOR, 'C:\Users\edigarev.2019\Desktop\gren.jpg');
end

if strcmp(VarStr1,'синий')
for i=1:h
   for j=1:w   
K= I(i, j, 1);
Y=  K;
COLOR(i, j, 1) = 0;
COLOR(i, j, 2) = 0;
COLOR(i, j, 3) = K-70; 
end
end
imwrite(COLOR, 'C:\Users\edigarev.2019\Desktop\blue.jpg');
end
end

