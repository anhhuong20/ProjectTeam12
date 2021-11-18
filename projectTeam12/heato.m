% doc heatmap
tbl={Age,Income,Spending,Education_years};
mp=zeros(4,4);
for c=1:4   
    for b=c:4
        mp(c,b) = corr(tbl{b},tbl{c});
        mp(b,c) = mp(c,b);
    end    
end
xlbl={'Age','Income','Spending','Educational\_years'};
HeatMap(xlbl,xlbl,mp,'Colormap', copper);


