%Raman Singh
%2022UEE4518
v=12;r3=250;r4=250;r2=120;
vab=[];
r1=linspace(1,500,500);
for i=1:1:500
    vab(i)=v*(r2/(r1(i)+r2) - r4/(r3+r4));      %#ok<*SAGROW>
end
plot(r1,vab);
hold on
r1=120;
r2=linspace(1,500,500);
for i=1:1:500
    vab(i)=v*(r2(i)/(r1+r2(i)) - r4/(r3+r4));
end
plot(r2,vab);
hold off