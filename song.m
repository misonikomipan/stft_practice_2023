%10秒の440 Hzの正弦波をfs Hzで作る
fs = 44100;
f = 440;
sigLen = 10;
t = 0 : 1/fs : sigLen;
wave = sin(2 * pi * f * t);
%sound(wave, fs);
filename = 'song.wav';
audiowrite(filename, wave, fs);