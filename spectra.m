[readVoice, fs] = audioread('./input/myonvoice.wav');   % 音を読み込む
fftLen = 4096; % フーリエ変換長
shiftLen = fftLen / 2; % シフト長
spectrogram = funcStft(readVoice, shiftLen, fftLen);
powerSpec = abs(spectrogram) .^ 2; % パワースペクトル表示
powerSpec = 10*log10(powerSpec);    % パワースペクトルをデシベルで表示
createfigure(powerSpec(1:fftLen/2+1, :)) % パワースペクトル表示