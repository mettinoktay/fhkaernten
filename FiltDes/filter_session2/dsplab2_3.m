% estimation of round-off noise in 2nd order block with quantized
% coefficients and fixed-point arithmetic
% used functions: filt2_rc.m
% dsplab16_2.m * mw * 02/03/2006
clc
w = 16;                     % word length
rho = .95; phi = 90*pi/180; % pole magnitude and phase
N = 10000;                  % number of simulation cycles
c = 2^(-w+8);               % noise scaling factor

% filter parameters
b = [.9375 0 0];               % numerator coefficients
a = [1 -2*rho*cos(phi) rho^2]; % denominator coefficients
si = [0; 0];   % initial values for state space variables

% quantized coefficients
LSB = 2^(-w+1);
bq = LSB*round(b/LSB);
aq = [1 2*LSB*round((a(2)/2)/LSB) LSB*round(a(3)/LSB)];

% input signal - noise
x = 2*rand(1,N)-ones(1,N);   % uniformly distributed in [-1,1]
xq = LSB*round(c*x/LSB);     % scaled and quantized input signal

% referenz system : 2nd order block with MATLAB default arithmetic
[yref,sref] = filter(bq,aq,xq,si);

% 2nd order block with fixed-point arithmetic
[y,s,OC] = filt2_rc(bq,aq,xq,si,w); % rounding, two's-complement overflow
fprintf('overflow counter  = %g\n',OC) % indicate overflow
r = yref - y;                          % error signal
Pr = sum(r.^2)/length(r); PrdB = 10*log10(Pr); % power measurements

% theoretical estimation of noise power at the filter output
Ri0  = (1+aq(3))/((1-aq(3))*((1+aq(3))^2-(aq(2))^2)); % noise figure
Nb = length(find(bq)); % number of non-zero numerator coefficients
Na = 1;
if aq(2)~=0
    Na = 5;
end
NP = (Nb+Na)*Ri0*(LSB^2)/12;

% display results
fprintf('pole: rho = %g   Omega = %g dB\n',sqrt(a(3)),...
    (180/pi)*acos(-aq(2)/(2*sqrt(a(3)))))
fprintf('round-off noise figure: %g dB\n',10*log10(Ri0))
fprintf('round-off noise power \n')
fprintf('theory                : %g dB\n',10*log10(NP))
fprintf('estimated             : %g dB\n',PrdB)