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

