% hmwk12.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630 Homework #12
% Due Date: 11/13/18
%
% Description:
% This program imports a data file with different coin information,
% calculates the total value of the coins, displays the computed value, and
% saves it as a new version of the data file.


load('coins.mat'); % imports data file

% Calculates total value
Coins.total_value = (Coins.Quarter_value * Coins.Quarter_count) + ...
(Coins.Dime_value * Coins.Dime_count) + ...
(Coins.Nickel_value * Coins.Nickel_count) + ...
(Coins.Penny_value * Coins.Penny_count);

save('coins_total.mat'); % Saves new version of data file
disp(sprintf('Total Value: %d', Coins.total_value)); % Displays computed total value
