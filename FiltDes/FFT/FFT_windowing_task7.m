% apply windowing 

clear;
close all
clc

% Sampling frequency
Fs = 44100;

% Generation of input stimuli
limp = 10;              % transient part of input signal
N = 32*2;               % number of points for the FFT

nsamples = N + limp;
amplitude = 0.5;        % must be between 
f0sin = 5*(Fs/N);       % frequency of the input sine wave in kHz  
indsin = 1:nsamples;
xinsin = (amplitude*sin(2*pi*indsin*f0sin/Fs));

len = length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title ('input signal in time domain')

% plot window chosen
figure;
plot(hanning(length(xinsin)));
xlabel('sample index')
ylabel('value')
title('Hanning window');

yout = xinsin((limp+1):length(xinsin));

% FFT without zero-padding
fft_in = yout;
f_vec = (0:(N-1))/N*Fs;
yout_fft = (4/N)*fft(fft_in.*hanning(length(yout))');    

figure;
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine without zero-padding')

% FFT with windowing
fft_in = yout;   
yout_fft = (4/(length(fft_in)))*fft([fft_in.*hanning(length(fft_in))' zeros(1,127*length(fft_in))]); 

figure;
f_vec = (0:length(yout_fft)-1)/length(yout_fft)*Fs; grid on; % new frequency vectur due to zero-padding
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'o');
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine with windowing')
