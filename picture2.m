function [ output_args ] = picture2 ( input_args )

I = imread('C:\Users\edigarev.2019\Desktop\123.jpg');
[h w z] = size(I); %[y x w]



for i=1:h
   for j=1:w   


R= I(i, j)
Y=  R;
if Y<=127
    Y=255-Y;
end
if Y>=127
 Y=255-Y;
end

Gray(i, j) = Y;

end
end
imwrite(Gray, 'C:\Users\edigarev.2019\Desktop\red.jpg');
end






