% Time domain simulation of an FIR filter
%
close all; clear all;
order=7;    % number of fir filter coefficients, must not be  changed here in this example
Fs= 8e3;              % sampling frequency
Ts=1/Fs;

% Input stimuli

N=128;                 % block length of FFT, number of points for the FFT
limp=10;                   % needed to remove transient part

amp=0.999;           % amplitude of input sine wave, Max=1!!!
sigbin=7;              % defines the signal frequency on the FFT grid
bw_index=N/2;          % defines the bandwidth
f0=sigbin*(Fs/N);   % signal frequency of the input sine wave
f_vec=(0:N-1)/N*Fs;

% definition of number of bits

nbits=16;      % number of bits for input signal, including sign bit
nbits_coef=8;  % number of bits for coefficients, including sign bit
xbits=0;       % number of rear bits
guardbits=1;  % number of guard bits
nbits_add=nbits+xbits+guardbits;



k=1:N+limp;
input_fir=amp*sin(2*pi*k*f0/Fs);

% quantisation of input signal

input_firq=round(input_fir*2^(nbits-1))/2^(nbits-1);


% FIR filter design

fir_num=fir1(order,0.15);

% quantise coefficients of FIR

fir_numq=round(fir_num*2^(nbits_coef-1))/2^(nbits_coef-1);


%  simulate FIR  with simulink

fir_numq=fir_numq;
ymax= sum(abs(fir_numq));
guardbits=log2(ymax)

fir_in_sim=[ Ts*(0:(length(input_firq)-1))'  input_firq'];

Tstop=length(fir_in_sim)*Ts;


sim('firq_sim_xbits');


% compare with matlab filter

figure
plot(fir_sim_out);
title(' FIR output')

%  Calculate SNR of FIR output dependent on truncation after multiplier (xbits)
if(1)
    %calculation of SNR of FIR input as reference


    fft_in=input_firq((limp+1):length(input_firq));
    fft_out=(2/N)*fft(fft_in);

    % plot magnitude response of FFT
    figure;
    plot(f_vec(1:length(fft_out)/2),20*log10(abs(fft_out(1:length(fft_out)/2))),'o');grid on;
    %plot(20*log10(abs(fft_out(1:length(fft_out)/2))),'o');grid on;
    xlabel('frequency[Hz])');
    ylabel('magnitude[dB]')
    title(' FFT of input sine wave up to FS/2 ')


    %calculate SNR
    sigindex=sigbin+1;  % FFT grid starts with 0, matlab index starts with 1!!!!
    noisebin=[[1:sigindex-1] [sigindex+1:bw_index]];
    Spower=sum(fft_out(sigindex).*conj(fft_out(sigindex)));
    Npower=sum(fft_out(noisebin).*conj(fft_out(noisebin)));
    SNR_fir_in=10*log10(Spower/Npower)


    %calculation of SNR of FIR output

    fir_out= fir_sim_out.data;
    %fir_out= fir_sim_out;
    fft_in=fir_out((limp+2):length(fir_out));
    fft_out=(2/N)*fft(fft_in);

    % plot magnitude response of FFT
    figure;
    plot(f_vec(1:length(fft_out)/2),20*log10(abs(fft_out(1:length(fft_out)/2))),'o');grid on;
    %plot(20*log10(abs(fft_out(1:length(fft_out)/2))),'o');grid on;
    xlabel('frequency[Hz])');
    ylabel('magnitude[dB]')
    title(' FFT of input sine wave up to FS/2 ')


    %calculate SNR
    sigindex=sigbin+1;  % FFT grid starts with 0, matlab index starts with 1!!!!
    noisebin=[[2:sigindex-1] [sigindex+1:bw_index]];
    Spower=sum(fft_out(sigindex).*conj(fft_out(sigindex)));
    Npower=sum(fft_out(noisebin).*conj(fft_out(noisebin)));
    SNR_fir_out=10*log10(Spower/Npower)

end

