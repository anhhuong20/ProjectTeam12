love=zeros(1,length(Marital_Status));
X={'2n Cycle','Basic','Graduation','Master','PhD'};
for c=1:length(Marital_Status)
    if Marital_Status(c)=='Married'||Marital_Status(c)=='Together'
        love(c) = 1;
    end
end
nC1 = 0; Bas1 = 0; Gra1 = 0; Mas1 = 0; Ph1 = 0;
nC2 = 0; Bas2 = 0; Gra2 = 0; Mas2 = 0; Ph2 = 0;
for c=1:length(Education)  
    switch Education(c)
        case '2n Cycle'
        nC1 = nC1+love(c);
        nC2 = nC2+~love(c);
        case 'Basic'
        Bas1 = Bas1+love(c);
        Bas2 = Bas2+~love(c);
        case 'Graduation'
        Gra1 = Gra1+love(c);
        Gra2 = Gra2+~love(c);
        case 'Master'
        Mas1 = Mas1+love(c);
        Mas2 = Mas2+~love(c);
        case 'PhD'
        Ph1 = Ph1+love(c);
        Ph2 = Ph2+~love(c);
    end
end
couple = [nC1 Bas1 Gra1 Mas1 Ph1];
alone = [nC2 Bas2 Gra2 Mas2 Ph2];
[couple,s1]=sort(couple);
[alone,s2]=sort(alone);
al=sum(alone);
cp=sum(couple);
s=al+cp;
hold on;
axis equal;
t=[0:0.001:1]*2*pi/s;
labels1=X(s1);
labels2=X(s2);
ang1 = t*cp;
ang2 = -t*al;
x1=0.5*sin(ang1);
y1=0.5*cos(ang1);
x2=0.5*sin(ang2);
y2=0.5*cos(ang2);
fill([0 2*x1],[0 2*y1],'r','FaceAlpha', 0.5);
fill([0 2*x2],[0 2*y2],'b','FaceAlpha', 0.5);
cyc = couple'*t;
ap=zeros(1,1001);
for c=1:5   
    h=text(-cyc(c,15)*10+0.5*(sin(ap(1001))+sin(cyc(c,1001)+ap(1001))),0.8*cos(ap(1001)+cyc(c,550)),labels1(c),'Color','w');
    if cyc(c,1001)-cyc(c,1)<pi/6
        set(h,'Rotation',abs(90-90/pi*(ap(1001)+cyc(c,1000))));
    end
    set(h,'fontsize', 5+couple(c)/90);
    ap=ap+cyc(c,:);
    plot([0 sin(ap) 0],[0 cos(ap) 0],'w','LineWidth',1);
    
end
tro = alone'*t;
bp=ap;
for c=1:5
    h=text(0.05+sin(bp(1001)+tro(c,350)),0.05+cos(bp(1001)+tro(c,300)),labels2(c),'Color','w');
    if tro(c,1001)-tro(c,1)<pi/6
        set(h,'Rotation',abs(270-180/pi*(bp(1001))));
    end
    set(h,'fontsize', 5+couple(c)/90);
    bp=bp+tro(c,:);
    plot([0 sin(bp) 0],[0 cos(bp) 0],'w','LineWidth',1);
end

fill([0 x1],[0 y1],'r','EdgeColor','w');
fill([0 x2],[0 y2],'b','EdgeColor','w');
text( 0.05,-0.25,'In couple','Color','w');
text( -0.3,0.2,'Alone','Color','w');



