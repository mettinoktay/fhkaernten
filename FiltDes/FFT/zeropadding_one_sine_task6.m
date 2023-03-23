% make the spectrum visible with finer granularity
%
clear;close all
%             

Fs     = 44100;             % Sampling frequency

% Generation of input stimuli

limp=10;              % remove transient
N=32*2;               % number of points for the FFT

nsamples=N+limp;

amplitude=0.5;        % must be between -1< amplitude<1
f0sin=5*(Fs/N);           % frequency of the input sine wave in kHz  
f_vec=(0:N-1)/N*Fs;
indsin=1:nsamples;
xinsin=amplitude*sin(2*pi*indsin*f0sin/Fs);
len=length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title (' input signal in time domain')

yout=xinsin((limp+1):length(xinsin));

% FFT without zero-padding

yout_fft=fft(yout);    

figure;
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine without zero-padding')

% FFT with zero-padding
fft_in= [yout zeros(1,127*length(yout))];  
yout_fft=fft(fft_in); 
% plot FFT

figure;
f_vec=(0:length(yout_fft)-1)/length(yout_fft)*Fs;  %%% new frequency vectur due to zero-padding !!!!!!!!!!!!!!!!!
plot(f_vec(1:length(yout_fft)/2),20*log10(abs(yout_fft(1:length(yout_fft)/2))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine with zero-padding')


