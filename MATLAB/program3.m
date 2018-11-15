% program3.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Program #3
% Due Date: 10/25/18
%
% Description:
% This function finds a submatrix within a matrix. It returns the number of
% occurrences and a list of x and y coordinates.
%
% Input:
% The program inputs are a matrix and a submatrix
% 
% Output:
% The program outputs are the count of submatrix occurrences, an array of 
% rows where they appear, and an array of columns where they appear.
% 
% Usage:
% [count, row, col] = program3(matrix, [9,0;4,5])


function [count, row, col] = program3(matrix, subMat)
    count = 0; % initializes counter
    row = 0; % initializes row
    col = 0; % initializes column
    [matR,matC] = size(matrix); % saves matrix size info
    [subMatR,subMatC] = size(subMat); % saves submatrix size info
    
    % compares sizes of submatrix to matrix
    if (matR < subMatR || matC < subMatC)
        s1 = 'Submatrix must be smaller than original matrix.';
        s2 = 'Please restart the program and use different dimensions.';
        error(sprintf(s1 + "\n" + s2)); % uses error command to display messages
    else
        % compares contents of submatrix to matrix
        for i = 1:length(matrix)-1
            for j = 1:length(matrix)-1
                if matrix(i,j) == subMat(1,1)
                    if i < matR % checks boundaries of matrix
                        if matrix(i+1,j) == subMat(2,1)
                            count = count + 1; % increments count value
                            row(count) = i; % assigns value to row array
                            col(count) = j; % assigns value to col array
                        end
                    end
                end
            end
        end
        % checks to see if submatrix occurs
        if count == 0
            disp('The submatrix is not found. Please try a different one.');
        end
    end
end
    