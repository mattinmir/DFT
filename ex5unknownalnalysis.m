sample1(1:256) = fft(unknown(1:256));
sample2(1:256) = fft(unknown(257:512));
plotspec(sample1, 1000, 256);
plotspec(sample2, 1000, 256);

plotspec(fft(unknown(1:1024)), 1000, 1024);
