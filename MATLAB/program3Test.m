% program3Test.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Program #3
% Due Date: 10/25/18
%
% Description:
% This program tests "program3" function and finds a submatrix within a matrix.


disp('Example 1:');
[count, row, col] = program3(matrix, [9,0;4,5])
disp(' ');

disp('Example 2:');
[count, row, col] = program3(matrix, [2,3;7,8])
disp(' ');

disp('Example 3:');
[count, row, col] = program3(matrix, [1,2;3,4])
disp(' ');

disp('Example 4:');
[count, row, col] = program3(matrix, [1,2;9,0;4,5;2,3;7,8])
