figure
histogram(Education)
xlabel('value');
ylabel('Count');
title('Education');

data3 = table(Income, marketingdata.Education);
histogram(data3);

'Divorced':'Alone','Single':'Alone','Married':'In couple',
'Together':'In couple','Absurd':'Alone','Widow':'Alone','YOLO':'Alone'
