x(1:4) = 1;
y=conv(x, unknown);
plotspec(fft(y), 1000,length(y));