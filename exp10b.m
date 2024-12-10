%Raman Singh
%2022UEE4518
[x,y]=ode45(@(x,y)(x*y)^0.5-0.5*y*exp(-0.1*x),[0 4],6.5);
plot(x,y);
xlabel("X");ylabel("Y");title("Raman Singh 2022UEE4518");
