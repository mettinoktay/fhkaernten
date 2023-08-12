%% TASK 1

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

%% TASK 2

clc
clear 

N = [1, 2, 5, 10, 100, 1000];

figure

for i = N
    % initializing total distance array
    d_of_N = zeros(1,i);
    for ii = 1:i
        % randomly generate -1 and +1
        dataset = 2*randi([1, 2], 1, ii) - 3;
        % total distance function
        d_of_N(ii) = sum(dataset);
    end
    subplot(3, 2, find(N==i))
    normplot(d_of_N);
    title(['NPP of d(' num2str(i) ')'], 'FontSize', 16,'Interpreter', 'latex')
    xlabel('Sum', 'FontSize', 16, 'Interpreter', 'latex')
    ylabel('Probability', 'FontSize', 16, 'Interpreter','latex')
end

%% TASK 3

clc
clear 

% initializing variables
N = 0:999;
std_dataset = zeros(1, length(N));
sigma_x = zeros(1, length(N));

for i = N
    % randomly generate -1 and +1
    dataset = 2*randi([1, 2], 1, i+1) - 3;
    % normalizing the dataset
    dataset = dataset / (i + 1);
    % standard deviation array
    std_dataset(i + 1) = std(dataset);
    % 1/sqrt(N) array
    sigma_x(i + 1) = 1/sqrt(i + 1);
end

figure
plot(N, std_dataset, 'LineWidth', 1, 'Color', [1 0 0])
hold
plot(N, sigma_x, 'LineWidth', 1, 'Color', [0 0 1])

xlabel('N', 'FontSize', 24,'Interpreter','latex')
ylabel('$\sigma_x$', 'FontSize', 24, 'Interpreter', 'latex')
title('Standard Deviation vs $\frac{1}{\sqrt{N}}$', 'FontSize', 24, 'Interpreter','latex')
legend('Standard Deviation', '$\frac{1}{\sqrt{N}}$', 'FontSize', 16, 'Interpreter', 'latex')

%% TASK 4

clc
clear 

% initilizing variables
N = 1:1000;
d_of_N = zeros(1, length(N));
std_d = zeros(1, length(N));
sqrt_N = zeros(1, length(N));

for i = N
    % randomly generate -1 and +1
    dataset = 2*randi([1, 2], 1, i) - 3;
    % total distance function
    d_of_N(i) = sum(dataset);
    % standard deviation array
    std_d(i) = std(d_of_N);
    % 1/sqrt(N) array
    sqrt_N(i) = sqrt(i);
end

figure

plot(std_d, 'LineWidth', 2)
hold
plot(sqrt_N, 'LineWidth' , 2)

xlabel('N', 'FontSize', 24, 'Interpreter', 'latex')
ylabel('$\sigma_d$', 'FontSize', 24, 'Interpreter', 'latex')
legend('Standard Deviation', '$\sqrt{N}$', 'FontSize', 16, 'Interpreter', 'latex')
