% program1.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630     Program #1
% Due Date: 9/20/18
%
% Description:
% This program will prompt the user to choose from 3 choices: converting 
% Fahrenheit to Celsius, converting Celsius to Fahrenheit, and quitting the 
% program. The chosen option will then be executed. Complex numbers are
% converted and displayed as float data types
% 
% Input:
% response = input('Please enter 1, 2, or, 3: ')
% x = input('Enter degrees in Fahrenheit to be converted to Celsius: ')
% x = input('Enter degrees in Celsius to be converted to Fahrenheit: ')
% 
% Output:
% sprintf("%d degrees Fahrenheit converts to %.2f degrees Celsius", x, y)
% sprintf("%d degrees Celsius converts to %.2f degrees Fahrenheit", x, y)
% disp("Goodbye!");
% disp("The key you entered is invalid. Please try again.");
% 
% Usage:
% program1


disp("Here is a menu of 3 options:");
disp(" ");
disp("1 - Convert Fahrenheit to Celsius");
disp("2 - Convert Celsius to Fahrenheit");
disp("3 - Quit the program");
disp(" ");
response = input('Please enter 1, 2, or, 3: '); %Prompts user input to choose an option to execute

switch(response)
    case 1
        x = input('Enter degrees in Fahrenheit to be converted to Celsius: '); %Prompts user input for Celsius conversion
        y = (x - 32) / 1.8; %Converts Fahrenheit to Celsius
        sprintf("%.2f degrees Fahrenheit converts to %.2f degrees Celsius", x, y) %Displays result
        disp(" ");
        program1 %Runs program again
    case 2
        x = input('Enter degrees in Celsius to be converted to Fahrenheit: '); %Prompts user input for Fahrenheit conversion
        y = x * 1.8 + 32; %Converts Celsius to Fahrenheit
        sprintf("%.2f degrees Celsius converts to %.2f degrees Fahrenheit", x, y) %Displays result
        disp(" ");
        program1 %Runs program again
    case 3
        disp("Goodbye!");
    otherwise
        disp("The key you entered is invalid. Please try again.");
        disp(" ");
        program1 %Runs program again
end
