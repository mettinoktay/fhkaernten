% limit cycles due to round-off in 2nd order block with quantized
% coefficients and fixed-point arithmetic
% used functions: filt2_rc.m, filt2_ts.m
% dsplab16_1.m
w = 16;                     % word length
rho = .95; phi = 0*pi/180; % pole magnitude and phase
N = 800;                    % number of simulation cycles

% filter parameters
b = [.9375 0 0];               % numerator coefficients
a = [1 -2*rho*cos(phi) rho^2]; % denominator coefficients
si = [0; 0];   % initial values for state space variables

% quantized coefficients
LSB = 2^(-w+1);
bq = LSB*round(b/LSB);
aq = [1 2*LSB*round((a(2)/2)/LSB) LSB*round(a(3)/LSB)];

% input signal - impulse sequence - quantized
xq = zeros(1,N);  xq(1) = 100*LSB;
% xq = zeros(1,N);  xq(1) = 0.75;

% referenz system : 2nd order block with MATLAB default arithmetic
[yref,zref] = filter(bq,aq,xq,si);

% 2nd order block with fixed-point arithmetic
% [y,s,OC] = filt2_rc(bq,aq,xq,si,w); % rounding, two's-complement overflow
[y,s,OC] = filt2_ts(bq,aq,xq,si,w); % truncation to zero, saturation arithm

% indicate overflow
fprintf('overflow counter  = %g\n',OC)

% search for limit cycle
fprintf('search for limit cycle\n')
start = 0; period = 0; k = 1;

while k <= N
    k = k+1;
    for m = k+1:N
        if s(:,k) == s(:,m)
            start = k; period = m-k;
            fprintf('limit cycle detected \n')
            fprintf('start  : %g    period : %g\n',start,period)
            k = N + 1;
            break
        end
    end
end

% graphics
FIG1 = figure('Name','dsplab2_2 : 2nd order block with quantized arithmetic',...
    'NumberTitle','off','Units','normal','Position',[.40 .30 .45 .55]);
subplot(2,1,1), plot(0:N-1,y/LSB,'o',0:N-1,yref/LSB,'x'); grid
xlabel('n \rightarrow'); ylabel('y[n] / LSB \rightarrow')
legend('y/LSB', 'yref/LSB');
if start ~= 0 % limit cycle detected
    n1 = start; n2 = start + period;
    subplot(2,1,2)
    plot(s(1,n1:n2)/LSB,s(2,n1:n2)/LSB,'ro',s(1,n1:n2)/LSB,s(2,n1:n2)/LSB,'b')
    grid; title(['limit cycle with periode ',num2str(period)]);
    xlabel('s_1[n] / LSB \rightarrow'); ylabel('s_2[n] / LSB \rightarrow')
else
    fprintf('no limit cycle detected\n')
end