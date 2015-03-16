%fNormalised = 300/(1000/2); %300Hz cutoff freq, 1kHz sample rate, measured in Hz*pi*rad/sec
%[b,a] = butter(70,fNormalised, 'low');
%unknown300Hz = filter(b, a, unknown);
%plotspec(fft(unknown), 1000, 1048);
%plotspec(fft(unknown300Hz), 1000, length(unknown300Hz));
load unknown;
trans = fft(unknown);
trans(315:end) = 0;
plotspec(trans, 1000, length(trans));
unknown300Hz = ifft(trans);
plotspec(unknown, 1000, length(unknown));
plotspec(unknown300Hz, 1000, length(unknown300Hz));
