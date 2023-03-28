%% Original Signal
nums = linspace(-1.5, 1.5, 100);
quant_nums_4bit = quant2c(nums, 4, '');
quant_nums_5bit = quant2c(nums, 5, '');

figure
plot(nums, quant_nums_4bit)
ylabel('Signal'); xlabel('Quantised Signal'); title('4 bit quantisation')
hold on
plot(nums, nums)

figure
plot(nums, quant_nums_5bit)
ylabel('Signal'); xlabel('Quantised Signal'); title('5 bit quantisation')
hold on
plot(nums, nums)

%% Scaled Signal
scaled_nums = 0.67 * nums
quant_nums_4bit = quant2c(scaled_nums, 4, '');
quant_nums_5bit = quant2c(scaled_nums, 5, '');

figure
plot(scaled_nums, quant_nums_4bit)
ylabel('Signal'); xlabel('Quantised Signal'); title('4 bit quantisation')
hold on
plot(scaled_nums, scaled_nums)

figure
plot(nums, quant_nums_5bit)
ylabel('Signal'); xlabel('Quantised Signal'); title('5 bit quantisation')
hold on
plot(scaled_nums, scaled_nums)

%% Transfer Functions 
z = 1 / tf('z', -1)
zz = z*z

H1 = G(2) * (SOS(1, 1) + SOS(1, 2)*z + SOS(1, 3)*zz) / (SOS(1, 4) + SOS(1, 5)*z + SOS(1, 6)*zz);
H2 = G(3) * (SOS(2, 1) + SOS(2, 2)*z + SOS(2, 3)*zz) / (SOS(2, 4) + SOS(2, 5)*z + SOS(2, 6)*zz);
H3 = G(4) * (SOS(3, 1) + SOS(3, 2)*z + SOS(3, 3)*zz) / (SOS(3, 4) + SOS(3, 5)*z + SOS(3, 6)*zz);

%% Quantisation

[SOSg, SOSq, b, a, bq, aq] = quant2cIIR(SOS, G, 6); 

fvtool(b, a, bq, aq)

function [xq] = quant2c(x,w,TMode)
    % two's complement quantizer with range [-1,1] (saturation)
    % function [xq]=quant2c(x,w,TMode)
    % x     : input signal
    % w     : word length (# of bits)
    % TMode : truncation mode 
    %         't' - truncation (rounding towards minus inifinity)  
    %         'r' - rounding to neares quantization level
    % xq    : quantized signal
    % quant2c.m * mw * 01/25/2006
    LSB = 2^(1 - w);     % least significant bit
    xq = min(1 - LSB, x);  % clipping (saturation)
    xq = max(-1, xq);
    % quantizer
    if TMode=='t'
      xq = floor(xq/LSB)*LSB;
    else
      xq = round(xq/LSB)*LSB;  
    end
end 

function [SOSg,SOSq,b,a,bq,aq] = quant2cIIR(SOS,G,w) 
    % quantized IIR filter analysis based on exported coefficients 
    % to workspace from fdatool for prototype design
    % [SOSg SOSq] = quant2cIIR(SOS,G)
    %  SOS  : second order representation of IIR system (fdatool)
    %  G    : gain factors (fdatool)
    %  w    : wordlength in bit
    %  SOSg : equally scaled 2nd-order systems
    %  SOSq : quantized 2nd-order systems
    %  b    : numerator coefficients of transfer function
    %  a    : denominator coefficients of transfer function
    %  bq   : numerator coefficients of quantized system
    %  aq   : denominator coefficients of quantized system
    % mw * 01/29/2006
    [M,N] = size(SOS);
    g = G(1); % scaling
    for k = 1:M
      g = g * G(1+k);
    end
    g = g^(1/M); % gain
    SOSg  = zeros(M,N);
    SOSg  = [g*SOS(:,1:3) SOS(:,4:6)];
    SOSq  = zeros(M,N); % quantized system
    for k=1:M
      for l=1:N
        if SOSg(k,l)~=1
          if l==5
            SOSq(k,l) = 2*quant2c(SOSg(k,l)/2,w,'r'); % a1
          else
            SOSq(k,l) = quant2c(SOSg(k,l),w,'r');
          end
        else
          SOSq(k,l) = 1;
        end
      end
    end

    % direct form II
    [b,a]   = sos2tf(SOS,G);
    [bq,aq] = sos2tf(SOSq,1);
end
