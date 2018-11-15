% hmwk11.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Homework #11
% Due Date: 11/6/18
%
% Description:
% This program selects an image and superimposes a rectangle over a
% selected part of that image.


[filename, pathname] = uigetfile({'*.jpg'; '*.bmg'; '*.jpeg';...
    '*.gif'; '*.bmp'; '*.png'}, 'Open your pic.');
if isequal(filename,0)
   disp('No image has been selected.');
else
    x = imread(strcat(pathname,filename));
    imshow(x);
    y = x;
    imshow(y);
    
    for i = 1:416
        for j = 1:739
            for k = 1:3
                y(i,j,k) = 255-x(i,j,k);
            end
        end
    end
    imshow(y);
end
