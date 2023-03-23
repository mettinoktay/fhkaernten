% Select input frequencies for given FS and N avoiding leakage
%
%
clear;close all
%             

Fs     = 16000;                % Sampling frequency
N=120;                         % block length of FFT, number of points for the FFT

% Generation of input stimuli

amplitude=1;       
f0sin=5*(Fs/N);           % frequency of the input sine wave must be a integer multiple of Fs/N to avoid leakage  

f_vec=(0:N-1)/N*Fs;
indsin=1:N;
xinsin=amplitude*sin(2*pi*indsin*f0sin/Fs);

len=length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title (' input signal in time domain')

% FFT of input signal 
xin_fft=(2/N)*fft(xinsin);    

% plot magnitude response of FFT
figure;
plot(f_vec(1:length(xin_fft)),20*log10(abs(xin_fft(1:length(xin_fft)))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine')


