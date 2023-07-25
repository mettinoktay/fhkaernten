clc
clear 

N = [1 2 5 10 100 1000];

dataset_mean = zeros(1, length(N));
dataset_std = zeros(1, length(N));

figure
sgtitle("Normal Probability Plot")
index = 1;
for ii = N
    dataset = randi([1, 2], 1, ii);
    dataset = 2 * dataset - 3;
    subplot(3,2,index)
    normplot(dataset)    
    index = index + 1;
end