function [y,s,OC] = filt2_ts(b,a,x,si,w)
    % 2nd order block for IIR filter with quantization by
    % rounding towards zero and saturation arithmetic
    % ! signals and filter coefficients in two's-complement format
    % [y,s,OC] = filt2_ts(b,a,x,si,w)
    %   b   : numerator coefficients   [b0 b1 b2]
    %   a   : denominator coefficients [1  a1 a2]
    %   x   : input sequence
    %   si  : initial values for state space variables [s1 s2]
    %   w   : word length
    %   y   : output sequence
    %   s   : sequences of state space variables
    %         s(1,:) = s1[n] and s(2,:) = s2[n]
    %   OC  : overflow counter
    % filt2_ts.m * mw * 02/01/2006
    LSB = 2^(-w+1); % least significant bit
    % memory allocations
    N = length(x); s = zeros(2,N+1); y = zeros(1,N); OC = 0;
    % two's-complement numbers
    s(:,1) = min(si',1-LSB); s(:,1) = max(s(:,1),-1); % initial values
    % filtering with rounding and two's-complement overflow mode
    for n = 1:N
        % output signal y[n] = b0*x[n] + s1[n]
        b0x = LSB*fix(b(1)*x(n)/LSB); % word length reduction
        y(n) = b0x + s(1,n);
        [y(n),OI] = overflow(y(n),LSB); % saturation arithmetic
        OC   = OC + OI;
        % state space variable 1
        % s1[n+1] = b1*x[n] + s2[n] + 2*(-a1/2)*y[n]
        b1x = LSB*fix(b(2)*x(n)/LSB); % word length reduction
        a1y = LSB*fix((-a(2)/2)*y(n)/LSB); % word length reduction
        s(1,n+1) = b1x + s(2,n) + a1y + a1y;
        [s(1,n+1),OI] = overflow(s(1,n+1),LSB); % saturation arithmetic
        OC = OC + OI;
        % state space variable 2
        % s2[n+1] = b2*x[n] + (-a2)*y[n]
        b2x = LSB*fix(b(3)*x(n)/LSB); % word length reduction
        a2y = LSB*fix(-a(3)*y(n)/LSB); % word length reduction
        s(2,n+1) = b2x + a2y;
        [s(2,n+1),OI] = overflow(s(2,n+1),LSB); % saturation arithmetic
        OC = OC + OI;
    end
end
% subfunction : overflow detection and saturation arithmetic
% [xO,OI] = overflow(x)
%   x  : input value
%   xO : two's-complement repesentation
%   OI : Overflow indicator (1: overflow, 0: no overflow)
function [xO,OI] = overflow(x,LSB);
    if x > 1-LSB
        xO = 1 - LSB; OI = 1;
    elseif x < -1
        xO = -1; OI = 1;
    else
        xO = x; OI = 0;
    end
end