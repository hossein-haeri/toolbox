  color = [0, 0.4470, 0.7410;
      0.8500, 0.3250, 0.0980;
      0.9290, 0.6940, 0.1250;
      0.4660, 0.6740, 0.1880];
% t = linspace(0,1,1000);
% raw = [t ;rand(1,1000)];
raw = rand(1,1000);
%% PLOT MEAN +/- STANDARD DEVIATION %%
avg_win = 20; % window length
avg = nanmean(reshape([raw; nan(mod(-numel(raw),avg_win),1)],avg_win,[]));
std = nanstd(reshape([raw; nan(mod(-numel(raw),avg_win),1)],avg_win,[]));
x = (1:1:numel(avg));
patch([x fliplr(x)], [avg-std fliplr(avg+std)], color(1,:), 'EdgeColor', [1, 1, 1], 'LineWidth', .1, 'FaceAlpha',.1)
hold on
plot(avg, 'Color', color(1,:), 'LineWidth', 1);


