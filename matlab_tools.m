  color = [0, 0.4470, 0.7410;
      0.8500, 0.3250, 0.0980;
      0.9290, 0.6940, 0.1250;
      0.4660, 0.6740, 0.1880];


%% PLOT MEAN +/- STANDARD DEVIATION %%
n = 100 % window length
avg = nanmean(reshape([raw; nan(mod(-numel(raw),n),1)],n
std = nanstd(reshape([raw; nan(mod(-numel(raw),n),1)],n,[]));
x = (1:1:numel(avg));
patch([x fliplr(x)], [avg-std fliplr(avg+std)], color(i,:), 'EdgeColor', [1, 1, 1], 'LineWidth', .1, 'FaceAlpha',.1)
plot(avg, 'Color', color(i,:), 'LineWidth', 1);


