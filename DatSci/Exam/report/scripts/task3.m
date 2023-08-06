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