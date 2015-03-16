pulse(1:4) = 1;
pulse(5:16) = 0;
plotspec(fft(pulse), length(pulse), length(pulse));
