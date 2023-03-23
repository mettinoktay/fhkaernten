% FFT of a sine wave after filtering
%
%
clear;close all
%             

Fs = 16000;           % Sampling frequency
N = 128;                    % block length of FFT, number of points for the FFT
limp=0;                   % needed to remove transient part

number_coef_fir=7;        % number of FIR filter coefficients


% FIR filter design
fir_num = fir1(number_coef_fir,0.25);


% Generation of input stimuli
amplitude = 0.5;       
f0sin = 5*(Fs/N);           % frequency of the input sine wave must be a integer multiple of Fs/N to avoid leakage  

f_vec = (0:N-1)/N*Fs;
indsin = 1:N+limp;
xinsin = amplitude*sin(2*pi*indsin*f0sin/Fs);

len = length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title ('input signal in time domain')

% FFT 
fft_in = xinsin((limp+1):length(xinsin));
xin_fft = fft(fft_in);    

figure;
plot(f_vec(1:length(xin_fft)),20*log10(abs(xin_fft(1:length(xin_fft)))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine')


%  filtering with FIR + FFT of output signal
yout_fir = filter(fir_num,1,xinsin);

fft_in = yout_fir((limp+1):length(yout_fir));
yout_fft = fft(fft_in);    

figure;
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'o');
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of FIR output ')

figure;
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'ro');grid on;
title(' red ...FFT of FIR output ')
hold on;

plot(f_vec(1:length(xin_fft)/2),20*log10(abs(xin_fft(1:length(xin_fft)/2))),'bo');
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title('red ...FFT of FIR output , blue... FFT of input sine ')
