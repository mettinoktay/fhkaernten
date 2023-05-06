% Sigma Delta ADC  second order, single bit used as a source to the CIC filter

A_dB = -6;              % A_dB must be smaller than 0!
AMPL = 10^(A_dB/20);

% System settings

limp = 512;             % startup samples to throuw away
Bs = 2^22;              % number of samples to for FFT
Fs = 15.36e6;           % sampling frequency

Tstop=(limp+Bs);        % simulation time for simulink

bw  = 30e3;             % band width
f0 = 10e3;              % signal frequency of input signal
OSR = Fs/(2*(bw));      % over sampling ratio

% coefficients of ADC-don't touch

a1 = 0.7752;
a2 = 0.215;
b1=1;
c1 = 1;
c2 = 1;

% input signal

tonebin = ceil(f0/Fs*Bs);
ft_sig = tonebin/Bs;
BW = ceil(bw/Fs*Bs);

%Calculate Own CombFilter

stages = 4;   % a.k.a. K
dec = 128;    % a.k.a. M
comb_num = ones(1,dec);
comb_den = dec;

for ii = 1:(stages-1)
    comb_num = conv(comb_num,ones(1,dec));
    comb_den = comb_den*dec;
end

% start simulink model

sim ('sim_adc_2nd_1bit_combfilterfix')
%sim ('sim_adc_2nd_1bit_combfilterfix_test')

% post processing of adc output signal

adc_out=adc_out_sim(limp+1:Bs+limp);


% FFT of sigma delta output

fft_in=adc_out;
N_fft=length(fft_in);
ff=(0:N_fft-1)/N_fft*Fs;

fft_out=fft(fft_in.*hanning(N_fft));

figure(1)
plot(ff,20*log10(abs(4/N_fft*fft_out)));grid on;
title('FFT of ADC output')

sig_index=tonebin+1;
bw_index=BW;

% calculate SNR at ADC output

sigbin=[sig_index-1 sig_index sig_index+1];
noisebin=[2:sig_index-2 sig_index+2:bw_index];
Spower=sum(fft_out(sigbin).*conj(fft_out(sigbin)));
Npower=sum(fft_out(noisebin).*conj(fft_out(noisebin)));
SNDRnshout=10*log10(Spower/Npower);

% start filtering with CIC in matlab

if(1)
    comb_out=filter(comb_num,comb_den,adc_out);
    comb_out_dec=comb_out(1:dec:end);

    % FFT of CIC output

    num_fft= Bs/128;
    len=length(comb_out_dec);
    fft_in=comb_out_dec((len-num_fft+1):end);
    N_fft=length(fft_in);
    ff=(0:N_fft-1)/N_fft*(Fs/dec);

    fft_out=fft(fft_in.*hanning(N_fft));

    figure(11)
    plot(ff,20*log10(abs(4/N_fft*fft_out)));grid on;
    title('FFT of CIC output matlab')

    sig_index=tonebin+1;
    bw_index=BW;

    % calculate SNR

    sigbin=[sig_index-1 sig_index sig_index+1];
    noisebin=[2:sig_index-2 sig_index+2:bw_index];
    Spower=sum(fft_out(sigbin).*conj(fft_out(sigbin)));
    Npower=sum(fft_out(noisebin).*conj(fft_out(noisebin)));
    SNDRcombout=10*log10(Spower/Npower);

end

% analysis simulink output

if(1)

    % comb_out_sim_dec=comb_out_sim_dec;

    % FFT
    num_fft= Bs/128;
    len=length(comb_out_sim_dec);
    fft_in=comb_out_sim_dec((len-num_fft+1):end);
    N_fft=length(fft_in);
    ff=(0:N_fft-1)/N_fft*(Fs/dec);

    % fft_out=fft(fft_in.*hanning(N_fft));
    fft_out=fft(fft_in);

    figure(111)
    plot(ff,20*log10(abs(4/N_fft*fft_out)));grid on;
    title('FFT of CIC output simulink')

    sig_index=tonebin+1;
    bw_index=BW;

    % calculate SNR

    sigbin=[sig_index-1 sig_index sig_index+1];
    noisebin=[2:sig_index-2 sig_index+2:bw_index];
    Spower=sum(fft_out(sigbin).*conj(fft_out(sigbin)));
    Npower=sum(fft_out(noisebin).*conj(fft_out(noisebin)));
    SNDRcombout_sim=10*log10(Spower/Npower);

end
