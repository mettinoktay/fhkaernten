% FFT of impulseresponse generates the frequency response

clear all;close all;


Fs=2.208e6;       % Sampling frequency
N = 2^9;          % block length of FFT, number of points for the FFT

f = (0:N-1)/(N)*Fs; % frequency vector

% Design a 7th order IIR filter

[num,den ] = ellip(7,0.3,60,0.552e6/(Fs/2));
lp_hf = freqz(num,den,f,Fs); 
figure
plot(f,20*log10(abs(lp_hf)),'r'); hold on;grid on;
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
title('Frequency response of digital lowpass filter')

%calculate impulse response

lp_impulse=dimpulse(num,den,N);

figure
stem(lp_impulse(1:100))
title(' impulse response of IIR Filter')

% with FFT out of impulse response we get the frequency response

lp_fft=fft(lp_impulse,N);

% plot FFT
figure
plot(f,20*log10(abs(lp_fft)),'ro');hold on
plot(f,20*log10(abs(lp_hf)),'bo')
xlabel('frequency[Hz])');
ylabel('magnitude[dB]')
legend('red...FFT of impulse response','blue...frequency response calculated with freqz')
title('Comparison of frequency response(freqz) and frequency response out of FFT ')






