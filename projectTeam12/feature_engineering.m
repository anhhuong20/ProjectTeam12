% create varible Age instead of varible Year_Birth
Age = 2021 - Year_Birth;
% create varible Spending
Spending = MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds;
% create varible education_years thay cho education
Education = categorical(Education);
Marital_Status = categorical(Marital_Status);
Education_years = double(renamecats(Education,{'Basic','2n Cycle','Graduation','Master','PhD'},{'5','8','12','18','21'}));
% create varible numberChild = Kidhome + Teenhome
numberChild = Kidhome + Teenhome;
% create data= (age, income, spending, marital_status,numberChild,Education_years)
data = table(ID, Age,Income,Spending,Marital_Status,numberChild,Education_years);
Income(isnan(Income))=0;
Spending(isnan(Spending))=0;