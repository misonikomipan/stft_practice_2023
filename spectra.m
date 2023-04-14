[readVoice, fs] = audioread('kitamuravoice.wav');
%sound(readVoice, fs);
monoVoice = readVoice(:, 1);
monoSpec = fft(monoVoice);
powerSpec = abs(monoSpec) .^ 2;