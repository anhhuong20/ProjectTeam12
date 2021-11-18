Income(isnan(Income))=0;
% Z = groupcounts(Education);
nC=0;
Bas=0;
Gra=0;
Mas=0;
Ph=0;
a1=0;
b1=0;
c1=0;
d1=0;
e1=0;
for c=1:length(Education)
    switch Education(c)
        case '2n Cycle'
        nC=nC+Income(c);
        a1=a1+1;
        case 'Basic'
        Bas=Bas+Income(c);
        b1=b1+1;
        case 'Graduation'
        Gra=Gra+Income(c);
        c1=c1+1;
        case 'Master'
        Mas=Mas+Income(c);
        d1=d1+1;
        case 'PhD'
        Ph=Ph+Income(c);
        e1=e1+1;
    end
end
Y = [nC/a1 Bas/b1 Gra/c1 Mas/d1 Ph/e1];
[y_sorted, y_order] = sort(Y,'ascend');
X = {'2n Cycle' 'Basic' 'Graduation' 'Master' 'PhD'};
x_order=X(y_order);
% X = categorical(x_order);
% X = reordercats(X,x_order);
bar(y_sorted);
set(gca,'xticklabel',x_order);
ylabel('avg of income');
xlabel('Education');
set(gca, 'YTickLabel', num2cell(get(gca, 'YTick')))
        