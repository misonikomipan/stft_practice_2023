[readVoice, fs] = audioread('./input/kitamuravoice.wav');   % 音を読み込む
% sound(readVoice, fs); % 音を鳴らす
monoVoice = readVoice(:, 1);    % 1チャンネルにする(ステレオからモノラルに変換)
sigLen = length(monoVoice); % 長さを測る
fftLen = 4096; % フーリエ変換長
shiftLen = fftLen / 2; % シフト長
monoVoice = [monoVoice; zeros(shiftLen, 1)]; % 音の長さをシフト長の倍数にする（ゼロ埋め）
spectrogram = zeros(fftLen, ceil(sigLen/shiftLen)-1);    % 格納する行列のサイズを定義
for i = 1 : ceil(sigLen/(fftLen/2))-1 % 繰り返し回数はスペクトログラムの列数です
    sigClip = monoVoice(1+shiftLen*(i-1) : fftLen+shiftLen*(i-1));  % 信号の切り出し
    sigMulti = sigClip .* hamming(fftLen);   % 切り出した信号に窓関数をかける  （要素毎の積）                    
    monoSpec = fft(sigMulti);    % 信号をフーリエ変換してスペクトルを得る
    spectrogram(:, i) = monoSpec;   % スペクトルをスペクトログラムに格納する
end
powerSpec = abs(spectrogram) .^ 2; % パワースペクトル表示
imagesc(powerSpec) % パワースペクトル表示