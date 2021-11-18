%describe data

% drawing plot
figure
subplot(2,2,1)
histogram(Age)
title('Variable = Age');
xlabel('value');
ylabel('Count');

subplot(2,2,2)
histogram(Spending)
title('Variable = Spending');
xlabel('value');
ylabel('Count');

subplot(2,2,3)
histogram(Income)
title('Variable = Income');
xlabel('value');
ylabel('Count');

subplot(2,2,4)
histogram(Education_years)
title('Variable = EducationYears');
xlabel('value');
ylabel('Count');

figure
boxplot(Income)
