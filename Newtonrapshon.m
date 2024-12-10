%Newton rapshion method
f=@(x)3*x-cos(x)-1;
fx=@(x)3-sin(x);
x=0.5;
for i=1:10
    x=x-f(x)/fx(x);
end
disp(x);