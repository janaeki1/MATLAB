% hmwk8.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Homework #8
% Due Date: 10/16/18
%
% Description:
% This program imports an image file, reads the image, shows it as a
% figure, prompts the user to select 2 points, crops the image, and
% displays the cropped image as a figure.


x = imread('image_file.JPG'); % imports image file
imshow(x); % displays image

title('Select 2 Points'); % titles original image
[a, b] = ginput(2); % prompts user to select two points on image

a(1) = uint32(a(1)); % converts coordinate to integer
a(2) = uint32(a(2)); % converts coordinate to integer
b(1) = uint32(b(1)); % converts coordinate to integer
b(2) = uint32(b(2)); % converts coordinate to integer

% alters coordinates, if needed, so that they remain within boundaries
if a(1) == 0
    a(1) = 1;
end

if a(2) == 0
    a(2) = 1;
end

if b(1) == 0
    b(1) = 1;
end

if b(2) == 0
    b(2) = 1;
end

% puts smaller coordinate in first index
if a(1) > a(2)
    temp = a(1);
    a(1) = a(2);
    a(2) = temp;
end

if b(1) > b(2)
    temp = b(1);
    b(1) = b(2);
    b(2) = temp;
end

% creates a cropped image using selected points
y = x(b(1):b(2), a(1):a(2));

figure(); % creates figure
imshow(y); % displays cropped image
title('Cropped Version'); % titles cropped image
