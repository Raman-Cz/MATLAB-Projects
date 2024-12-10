%Raman Singh
%2022UEE4518
%A
y=@(x) (2*x.^2)./(1+x).^0.5;
z=quad(y,1,6);                         %#ok<*DQUAD>
disp("The value of integral A:");
disp(z);
%B
y=@(x) (cos(2*x)./x);
z=quad(y,1,2);
disp("The value of integral B:");
disp(z);
