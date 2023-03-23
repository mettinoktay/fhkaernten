% FFT of sine wave without leakage, generation of plot with correct
% frequency representation
%
clear;
close all
clc


load data_for_fft.mat

Fs = 64000;               % Sampling frequency
N = 1024;                 % block length of FFT, number of points for the FFT
amplitude = 1;            % amplitude of input sine wave
f0sin = 50*(Fs/N);        % signal frequency of the input sine wave   
f_vec = (0:N-1)/N*Fs;     

indsin = 1:N;
% xinsin = amplitude*sin(2*pi*indsin*f0sin/Fs);
xinsin = data_for_fft;

len = length(xinsin);

figure
plot(xinsin);
grid on;
xlabel('sample index')
ylabel('value')
title('input signal in time domain')

xin_fft = (2/N)*fft(xinsin);

figure;
plot(f_vec(1:length(xin_fft)/2), 20*log10(abs(xin_fft(1:length(xin_fft)/2))), 'o');
grid on;
xlabel('Frequency [Hz])');
ylabel('Magnitude [dB]');
% ylim([-340 -280])
title('FFT of input sine wave up to FS/2')

figure;
plot(f_vec(1:length(xin_fft)),20*log10(abs(xin_fft(1:length(xin_fft)))), 'o');
grid on;
xlabel('Frequency [Hz])');
ylabel('Magnitude [dB]');
% ylim([-340 -280])
title('FFT of input sine')
