% import file marketingdata
marketingdata = importfile('marketingdata.csv', 2, 2241);
% import file marketingdata theo t?ng column
[ID,Year_Birth,Education,Marital_Status,Income,Kidhome,Teenhome,Dt_Customer,Recency,MntWines,MntFruits,MntMeatProducts,MntFishProducts,MntSweetProducts,MntGoldProds,NumDealsPurchases,NumWebPurchases,NumCatalogPurchases,NumStorePurchases,NumWebVisitsMonth,AcceptedCmp3,AcceptedCmp4,AcceptedCmp5,AcceptedCmp1,AcceptedCmp2,Response,Complain,Country] = importfile1('marketingdata.csv',2, 2241);
% print data
disp(marketingdata);
% shape of data
[row, column] = size(marketingdata);
fprintf('shape of data');
disp([row, column]);
%finding missing values
total = sum(ismissing(marketingdata));
disp(total);
variables = marketingdata.Properties.VariableNames;
disp(variables)
% draw heapmap to show missing value in columns
