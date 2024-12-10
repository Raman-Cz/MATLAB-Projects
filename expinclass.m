p=[1 5 0 25];

a=polyval(p,1);
b=polyval(p,5);
r=roots(p);
q=poly(r);
q=[1 1 0];
p+[0 q];
conv(p,q);
deconv(p,q);
x=[1 2 3 4 5];y=[2,4,5,8,11];
plot(x,y,"o",x,y,"--")
p=polyfit(x,y,1);
q=polyfit(x,y,2);
hold on
p1=polyval(p,x);
plot(x,p1);
q2=polyval(q,x);
hold on
plot(x,q2);
%interpolation linear spine pchip 
y5=interp1(x,y,4.5,"linear")
y6=interp1(x,y,4.5,"pchip")
y7=interp1(x,y,4.5,"spline")


