function createfigure(cdata1)
%CREATEFIGURE2(cdata1)
%  CDATA1:  image cdata

%  MATLAB からの自動生成日: 28-Apr-2023 13:59:32

% figure を作成
figure1 = figure;

% axes を作成
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% image を作成
image(cdata1,'Parent',axes1,'CDataMapping','scaled');

% ylabel を作成
ylabel('周波数 [Hz]');

% xlabel を作成
xlabel('時間 [sec]');

% title を作成
title('パワースペクトログラム');

box(axes1,'on');
axis(axes1,'tight');
hold(axes1,'off');
% 残りの座標軸プロパティの設定
set(axes1,'CLim',[-80 40],'FontSize',12,'Layer','top','XTick',...
    [0 21.533203125 43.06640625 64.599609375 86.1328125 107.666015625 129.19921875],...
    'XTickLabel',{'0','1','2','3','4','5','6'},'YTick',...
    [0 500 1000 1500 2000 2500 3000 3500 4000 4500]);
% colorbar を作成
c = colorbar(axes1, 'Ticks',[-100 -80 -60 -40 -20 0 20 40],...
    'TickLabels',{'-100','-80','-60','-40','-20','0','20','40'});
c.Label.String = 'パワー値 [dB]';
c.Label.FontSize = 12;