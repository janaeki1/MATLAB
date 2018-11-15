% hmwk6.m
%
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630 Homework #6
% Due Date: 10/2/18
%
% Description:
% This program explores "parfor", which executes a for loop in parallel.


arr = 1:100; % initializs an array of numbers from 1 to 100

% Calculates the square root of each element in the original array and
% and puts them in a new array using "parfor". If an error occurs, the
% loop will execute using "for"
try
    parfor i=1:length(arr)
        b_array(i) = sqrt(arr(i));
    end
catch
    for i=1:length(arr)
        b_array(i) = sqrt(arr(i));
    end
end

% Attempts to execute a non-existent function and displays a message when an
% error has occurred.
try
    qwerty()
catch
    disp("function qwerty does not exist.")
end
