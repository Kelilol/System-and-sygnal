function [ output_args ] = Untitled( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

I = imread('C:\Users\edigarev.2019\Desktop\123.jpg');  
[h w z] = size(I); %[y x w]

 VarStr1 = input( ' введите угол поворота ' );

for i=1:h
for j=1:w   


R= I(i, j);

if R<=127
    Y=255-R;
end
if R>=129
 Y=255-R;
end
if R==128
 Y=R;
end


Gray(i, j) = Y;
end
end
imwrite(Gray, 'C:\Users\edigarev.2019\Desktop\blackinwhite12.jpg');



im1 = Gray;
[m,n,p]=size(im1);

m
n
thet = VarStr1;
mm = round(sqrt((m^2+n^2))+1);
nn = round(sqrt((m^2+n^2))+1);

C=image(0:mm,0:nn,1);
imwrite(C, 'C:\Users\edigarev.2019\Desktop\blackinwhite12.jpg');
for t=1:m
   for s=1:n
      i = round(s*sin(thet)+t*cos(thet))
      j = round(s*cos(thet)-t*sin(thet))         
       im2(i,j)=im1(t,s)
      end
   
end

end
