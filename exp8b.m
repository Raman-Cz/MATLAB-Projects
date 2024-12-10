%Raman Singh 
%2022UEE4518
x=linspace(-2*pi,2*pi,1000);
y=sin(x);grid on
hold on
plot(x,y);

y=x;
plot(x,y);
y=x.^1-(x.^3)/6;
plot(x,y);
y=x.^1-x.^3/6 + x.^5/factorial(5)...
- x.^7/factorial(7) + x.^9/factorial(9);
plot(x,y);
ylim([-2 2]);
hold off