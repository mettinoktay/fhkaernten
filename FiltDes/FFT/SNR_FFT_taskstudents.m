% Calculate Signal t Noise ration out of FFT
%
clear;close all
%             

Fs     = 16000;                % Sampling frequency

% Generation of input stimuli

N=256;                 % block length of FFT, number of points for the FFT

amplitude=0.25;           % amplitude of input sine wave
f0sin=17*(Fs/N);   % signal frequency of the input sine wave   
f_vec=(0:N-1)/N*Fs;    

indsin=1:N;
xinsin=amplitude*sin(2*pi*indsin*f0sin/Fs) ;

% add noise

noise=randn(1,N)*10^-4.4;
xinsin=xinsin+1*noise;



