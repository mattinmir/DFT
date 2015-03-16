function  plotspec(A, samplerate, totsamples)
    % Divide by totsamples as fft misses this out
    mag = sqrt(A .* conj(A))/totsamples; 
    phase = atan2(imag(A), real(A));
    % 1 datapoint for each sample taken, 
    % spacing between them is samplerate/totsamples
    faxis = [0:totsamples-1]*samplerate/totsamples; 
    
    figure;
    subplot(2, 1,1);
    bar(faxis, mag);
    axis tight;
    ylabel('Magnitude');
    xlabel('Frequency (Hz)');
    
    subplot(2,1,2);
    plot(faxis, unwrap(phase));
    ylabel('Phase (rad)')
    xlabel('Frequency (Hz)');
end