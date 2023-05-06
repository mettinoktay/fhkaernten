function [xq]=quant2c(x,w,TMode)
    % tow's complement quantizer with range [-1,1[ (saturation)
    % function [xq]=quant2c(x,w,TMode)
    % x     : input signal
    % w     : word length (# of bits)
    % TMode : truncation mode
    %         't' - truncation (rounding towards minus inifinity)
    %         'r' - rounding to neares quantization level
    % xq    : quantized signal
    % quant2c.m * mw * 01/25/2006
    LSB = 2^(-w+1);     % least significant bit
    xq = min(1-LSB,x);  % clipping (saturation)
    xq = max(-1,xq);
    % quantizer
    if TMode=='t'
        xq = floor(xq/LSB)*LSB;
    else
        xq = round(xq/LSB)*LSB;
    end
end