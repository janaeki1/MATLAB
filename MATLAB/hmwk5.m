% hmwk5.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630 Homework #5
% Due Date: 9/25/18
%
% Description:
% This program uses a function to convert the month from an integer value 
% to a string.


function [month] = hmwk5(num)
    % takes input argument and returns corresponding month
    switch (num)
        case 1
            month = "January";
        case 2
            month = "February";
        case 3
            month = "March";
        case 4
            month = "April";
        case 5
            month = "May";
        case 6
            month = "June";
        case 7
            month = "July";
        case 8
            month = "August";
        case 9
            month = "September";
        case 10
            month = "October";
        case 11
            month = "November";
        case 12
            month = "December";
        otherwise
            % executes when input argument is invalid
            error('Error occurred. Input argument must be from 1 to 12.')
    end
    