scatter(Spending,Income,15,'filled');
ylim([0 200000])
set(gca, 'YTickLabel', num2cell(get(gca, 'YTick')))