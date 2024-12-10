%Milne predictor corrector method
h=0.2;
x=[0,0.2,0.4,0.6];
y=[0,0.02,0.0795,0.1762];
fx=[0 0 0 0];
for i=1:4
    fx(i)=x(i)-y(i)^2;
end
%predictor formula;
yp=y(1)+(4/3)*h*(2*fx(2)-fx(3)+2*fx(4));
answerp=0.8-yp^2;
disp(answerp);
%corrector formula;
yc=y(3)+(h/3)*(fx(3)+4*fx(4)+answerp);
answerc=0.8-yc^2;
disp(answerc);