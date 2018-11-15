% hmwk9.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Homework #9
% Due Date: 10/23/18
%
% Description:
% This program imports an image file, converts the file into a logical 
% image (black and white), swaps the colors, and explores the command,
% "text(10,10,'cells');"


x = imread('small_image.JPG'); % imports image file

bw = im2bw(x); % converts image to black and white
bwReverse = ~bw;  % swaps black and white colors
imshow(bwReverse); % displays image

text(10,10,'cells'); % adds text description at specified point

xlabel('hmwk9'); % labels x-axis
ylabel('Jerome Anaeki'); % labels y-axis
title('small_image.JPG'); % titles image
