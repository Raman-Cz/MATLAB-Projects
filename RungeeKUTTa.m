%Rangee Kutta method
x0=0;y0=1;h=0.2;
k1=h*func(x0,y0);
k2=h*func(x0+h/2,y0+k1/2);
k3=h*func(x0+h/2,y0+k2/2);
k4=h*func(x0+h,y0+k3);
K=(1/6)*(k1+2*k2+2*k3+k4);
answer=y0+K;
disp(answer);
function f=func(x,y)
        f=x+y;
end
