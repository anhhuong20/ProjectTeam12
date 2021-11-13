% draw boxplot for Age, Income , Spending, Education_years
figure
subplot(2,2,1)
boxplot(Age)
title('Variable = Age');
ylabel('Value');

subplot(2,2,2)
boxplot(Income)
title('Variable = Income');
ylabel('Value');

subplot(2,2,3)
boxplot(Spending)
title('Variable = Spending');
ylabel('Value');

subplot(2,2,4);
boxplot( str2num(char(Education_years)));
title('Variable = EducationYears');
ylabel('Value');
% remove rows which have Income > 600000
dataset = data(~(data.Income>600000),:);
% combine dataset with Education volumn
data2 = table(ID, Education);
dataset = join(dataset,data2);
% split data in 7-3, 7(data train), 3(data test)
cv = cvpartition(size(dataset,1),'HoldOut',0.3);
datatrain = dataset(cv.training,:);
datatest = dataset(cv.test,:);