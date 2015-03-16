samplerate = 20000;
signalfreq = 1000;
totsamples = 128;
x = sinegen(samplerate, signalfreq, totsamples);

original = fft(x);
plotspec(original, samplerate, totsamples);

b = blackman(128);
Ab = fft(b' .* x); % b' because blackman() returns a column vector, you want a row vector
plotspec(Ab, samplerate, totsamples);

h = hann(128);
Ah = fft(h' .* x);
plotspec(Ah, samplerate, totsamples);