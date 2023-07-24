clc
clear 

N = 1;
% 2 5 10 100 1000;

data_set = randi([1, 2], 1, N);

data_set = 2 * data_set - 3;

% Display the generated random numbers
disp(data_set);



