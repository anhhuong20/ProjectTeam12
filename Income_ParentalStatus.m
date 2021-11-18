doc legend
Nochild=[];
for c = 1:length(Income)
    if numberChild(c) == 0       
        Nochild = [Nochild ;Income(c)];
    end
end
edge=0:2000:700000;
edge=[edge inf];
I = histcounts(Income,edge);
No = histcounts(Nochild,edge);
Yes=I-No;
bar([No(:) Yes(:)],'stacked', 'BarWidth', 0.9);
xlim([0 100])
legend('No','Yes');
xt = get(gca, 'XTick');                                
set(gca, 'XTick', xt, 'XTickLabel', xt*2000);
ylabel('count');
xlabel('Income');
title('Income level by parental status');