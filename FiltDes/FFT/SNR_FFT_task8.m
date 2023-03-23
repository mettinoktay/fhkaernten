% Calculate Signal t Noise ration out of FFT
%
clear;close all
%             

Fs     = 8000;                % Sampling frequency

% Generation of input stimuli

N=128;                 % block length of FFT, number of points for the FFT

amplitude=1;           % amplitude of input sine wave
sigbin=7;              % defines the signal frequency on the FFT grid
bw_index=N/2;          % defines the bandwidth 
f0sin=sigbin*(Fs/N);   % signal frequency of the input sine wave   
f_vec=(0:N-1)/N*Fs;    

indsin=1:N;
xinsin=amplitude*sin(2*pi*indsin*f0sin/Fs) ;

% add white noise

noise=randn(1,N)*10^-3.4;
xinsin=xinsin+1*noise;

len=length(xinsin);

figure
plot(xinsin);grid on;
xlabel('sample index')
ylabel('value')
title (' input signal in time domain')

% FFT of signal 
xin_fft=(2/N)*fft(xinsin);    

% plot magnitude response of FFT
figure;
%plot(f_vec(1:length(xin_fft)/2),20*log10(abs(xin_fft(1:length(xin_fft)/2))),'o');grid on;
plot(20*log10(abs(xin_fft(1:length(xin_fft)/2))),'o');grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title(' FFT of input sine wave up to FS/2 ')


%calculate SNR
sigindex=sigbin+1;  % FFT grid starts with 0, matlab index starts with 1!!!!
noisebin=[[1:sigindex-1] [sigindex+1:bw_index]];
Spower=sum(xin_fft(sigindex).*conj(xin_fft(sigindex)));
Npower=sum(xin_fft(noisebin).*conj(xin_fft(noisebin)));
SNR=10*log10(Spower/Npower)


