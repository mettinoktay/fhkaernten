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

