% FH Kärnten
% Systems Design Master's Program
% Filter Design Project
% June 2023
%
% Walcher, Daniel & Yilmaz, Metin Oktay
%
% 2nd order single bit ADC -> 3rd order Comb Filter (M = 64) -> Low Pass FIR Filter (M1 = 4)

clc
clear all
close all

A_dB = -6;              % A_dB must be smaller than 0!
AMPL = 10^(A_dB/20);
limp = 512;             % startup samples to throw away
Bs = 2^23;              % number of samples to for FFT
Fs = 15.36e6;           % sampling frequency
Tstop = (limp+Bs);      % simulation time for simulink
bw = 30e3;              % bandwidth
f0 = 10e3;              % signal frequency of input signal
OSR = Fs/(2*(bw));      % over sampling ratio

% coefficients of ADC - don't touch
a1 = 0.7752;
a2 = 0.215;
b1 = 1;
c1 = 1;
c2 = 1;


nbits=20;      % number of bits for input signal, including sign bit   
nbits_coef=8;  % number of bits for coefficients, including sign bit
xbits=2;       % number of rear bits
guardbits=1;  % number of guard bits
nbits_add=nbits+xbits+guardbits;

% input signal
tonebin = ceil(f0/Fs*Bs);
sig_index = tonebin + 1;
ft_sig = tonebin/Bs;
BW = ceil(bw/Fs*Bs);
bw_index = BW;

sigbin = [sig_index-1 sig_index sig_index+1];
noisebin = [2:sig_index-2 sig_index+2:bw_index];


%----------------COMB FILTER COEFFICEINT CALC

order = 3;  			% number of stages (K)
dec = 64;  				% decimation by a factor M
comb_num = ones(1, dec);
comb_den = dec;

for ii = 1:(order-1)
    comb_num = conv(comb_num, ones(1, dec));
    comb_den = comb_den*dec;
end


%----------------FIR FILTER COEFFICEINT CALC

Fs_FIR=Fs/64
order=15%15;    % number of fir filter coefficients
Ts=1/Fs_FIR;

% Input stimuli
f0= 0.1e3;              % input sine frequency0
k=0:1:1000;
fir_num=fir1(order,30e3/(Fs_FIR*2)); %Filter design needs to be done on high rate  
f=0:100:Fs_FIR/2;
[h_fir]=freqz(fir_num,1,f,Fs_FIR);
plot(f,20*log10(abs(h_fir)));
xlabel("frequency [Hz]")
xlabel("magnitude [dB]")
title("magnitude response FIR filter")
fir_num=round(fir_num*2^(nbits_coef-1))/2^(nbits_coef-1);


% start simulink model
Tstop=(limp+Bs);
sim('Project5_Walcher_Yilmaz_sim_2019a')

% post processing of adc output signal
adc_out = adc_out_sim(limp+1:Bs+limp);



% FFT of Sigma Delta ADC Output
% 1st of 3 FFTs in the Project
fft_in = adc_out;
N_fft = length(fft_in);
ff = (0:N_fft - 1) / N_fft*Fs;
fft_out = fft(fft_in.*hanning(N_fft));

figure
subplot(1,2,1)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
xlim([0 30000]);
grid on;
title('FFT of ADC output 30kHz')
subplot(1,2,2)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
grid on;
title('FFT of ADC output')

% Calculate SNR at ADC output
% 1st of 3 SNRs in the Project
Spower = sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower = sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDRnshout = 10*log10(Spower/Npower)
absfft=abs(fft_out);


% Start filtering with CIC in Matlab
comb_out = filter(comb_num, comb_den, adc_out);
comb_out_dec = comb_out(1:dec:end);

% FFT of Matlab's CIC Output
% 2nd of 3 FFTs in the Project 
num_fft = Bs/64;
len = length(comb_out_dec);
fft_in = comb_out_dec((len-num_fft+1):end);
N_fft = length(fft_in);
ff = (0:N_fft-1)/N_fft*(Fs/dec);
fft_out = fft(fft_in.*hanning(N_fft));

figure
subplot(1,2,1)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
xlim([0 30000]);
grid on;
title('FFT of CIC output matlab 30kHz')

subplot(1,2,2)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
title('FFT of CIC output matlab')
grid on;


% Calculate SNR
% 2nd of 3 SNRs in the Project
Spower = sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower = sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDRcombout = 10*log10(Spower/Npower)

% FFT of Simulink's CIC output
% 2nd of 3 FFTs in the Project

num_fft = Bs/64;
len = length(comb_out_sim_dec);
fft_in = comb_out_sim_dec((len-num_fft+1):end);
N_fft = length(fft_in);
ff = (0:N_fft-1)/N_fft*(Fs/dec); % frequency vector

 fft_out=fft(fft_in.*hanning(N_fft));
%fft_out = fft(fft_in);

figure
subplot(1,2,1)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
xlim([0 30000]);
grid on;
title('FFT of CIC output simulink 30kHz')
subplot(1,2,2)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
grid on;
title('FFT of CIC output simulink')

% Calculate SNR CIC output
% 2nd of 3 SNRs in the Project
Spower = sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower = sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDRcombout_sim = 10*log10(Spower/Npower)
absfft=abs(fft_out);


%%FIR FILTER MATLAB
y_ref=filter(fir_num,1,comb_out_dec);
y_ref_dec=y_ref(1:4:end);

%%PLOTTING OF FIR FILTER
fir_out= fir_sim_out.data;   


% FFT of Simulink's FIR output
% 3rd of 3 FFTs in the Project
Fs=Fs/64/4
num_fft = Bs/64/4;
len = length(fir_sim_out);
fft_in = fir_out((len-num_fft+1):end);
N_fft = length(fft_in);
ff = (0:N_fft-1)/N_fft*(Fs);
fft_out = fft(fft_in.*hanning(N_fft));
absfft=abs(fft_out);


figure
subplot(1,2,1)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
xlim([0 30000]);
grid on;
title('FIR output simulink 30kHz')

subplot(1,2,2)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
grid on;
title('FIR output simulink')

Spower = sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower = sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDR_FIR_simulink = 10*log10(Spower/Npower)


% FFT of Matlab's FIR output
% 3rd of 3 FFTs in the Project

len = length(y_ref_dec);
fft_in = y_ref_dec((len-num_fft+1):end);
N_fft = length(fft_in);
ff = (0:N_fft-1)/N_fft*(Fs);
fft_out = fft(fft_in.*hanning(N_fft));
absfft=abs(fft_out);

figure
subplot(1,2,1)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
xlim([0 30000]);
grid on;
title('FIR output Matlab 30kHz')

subplot(1,2,2)
plot(ff, 20*log10(abs(4/N_fft*fft_out)),'-o');
grid on;
title('FIR output Matlab')

Spower = sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower = sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDR_FIR_Matlab = 10*log10(Spower/Npower)

a=1

save ("comb_out_dec.mat",'comb_out_dec')