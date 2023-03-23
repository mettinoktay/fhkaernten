% Select FFT-Size N for given Fs and signal frequency f0 avoiding leakage
%
%
clear;close all
%             

Fs     = 8000;               % Sampling frequency


% Generation of input stimuli

amplitude=0.5;       
f0sin=3125;           % frequency of the input sine wave    
%f0sin=3100;           % frequency of the input sine wave 
N=64;               % out of  N*(1/Fs)= integer multiple of 1/fosin --> N=Fs/fosin --> integer; N= 8/3.125=8/(25/8)=8*8/25 --> 64
%N=80;               % out of  N*(1/Fs)= integer multiple of 1/fosin --> N=Fs/fosin --> integer; N= 8/3.1=8/(31/10)=8*10/31 --> 80   

f_vec=(0:N-1)/N*Fs;
indsin=1:N;
xinsin=amplitude*sin(2*pi*indsin*f0sin/Fs);

len=length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title (' input signal in time domain')

% FFT  
xin_fft=fft(xinsin);    

% plot magnitude response of FFT
figure;
plot(f_vec(1:length(xin_fft)),20*log10(abs(xin_fft(1:length(xin_fft)))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine')


