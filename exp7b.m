%Raman Singh
%2022UEE4518
a=13;b=4.2;c=(4*b)/a;d=a*b*c/(a+b+c);
x=(a*b)/(c+d) + ((d*a)/(c*b)) -((a-(b*b))*(c+d));
disp("Value of expression A:");
disp(x);
disp("Value of expression B:");
y= ((a^2+b^2)^0.5)/(d-c) +log(abs(b-a+c-d));
disp(y);