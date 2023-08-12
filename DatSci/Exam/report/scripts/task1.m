clc
clear 

plus_ones = ones(1, 500);
minus_ones = -ones(1, 500);

data_set = [plus_ones minus_ones];

data_set = data_set(randperm(length(data_set)));

mean(data_set)
std(data_set)
histogram(data_set, length(data_set))
title('Histogram of the Data Set with 1000 Bins', 'FontSize', 24, 'Interpreter', 'latex')
xlabel('Value', 'FontSize', 24, 'Interpreter', 'latex')
ylabel('Occurence', 'FontSize', 24, 'Interpreter', 'latex')
