% hmwk4.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630     Homework #4
% Due Date: 9/18/18
%
% Description:
% This program creates a function that takes two inputs, finds square 
% of difference of inputs, finds square of sum of inputs, and displays the 
% results as two outputs.


function [out1, out2] = hmwk4(in1, in2)
    
    difference = in1 - in2; %Calculates difference of inputs
    sum = in1 + in2; %Calculates sum of inputs

    out1 = difference * difference; %Calculates square of difference
    out2 = sum * sum; %Calculates square of sum
    