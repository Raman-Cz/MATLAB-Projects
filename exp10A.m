%Raman Singh
%2022UEE5418
y=@(x) (x-2)./((x-2).^4 + 2).^1.8;
y0=0;
%Minimum
[xmin,ymin]=fminbnd(y,0,5);
disp("The minium value of x is:");
disp(xmin);
disp("The minimum value of function is:");
disp(ymin);
%Maximum
[xmax,ymax]=fminbnd(@(x)-y(x),0,5);
disp("The maximum value of x is:");
disp(xmax);
disp("The maximum value of function is:")
disp(-ymax);


