% 音を録音するやつ
fs = 44100;  % サンプリング周波数
nBit = 16;  % ビットレート(細かさ)
nChannel = 1;   % チャンネル数(1: モノラル，2: ステレオ)
recDuration = 10;    % 録音時間

recObj = audiorecorder(fs,nBit,nChannel); % オブジェクト生成
disp("Begin speaking.")
recordblocking(recObj,recDuration);
disp("End of recording.")
signal = getaudiodata(recObj);   % データを配列に格納
play(recObj);   % 再生
audiowrite('./input/myonvoice.wav', signal, fs);   % 音を保存