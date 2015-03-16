x(1:16) = zeros(1,16);
x(4) = 1;
A = fft(x);

plotspec(A, 0, 8);

