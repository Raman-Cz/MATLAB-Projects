P=5000;r=8.5;t=17;
B=P*(1+r/100)^t;
disp("The total money in account 1 after 17 years: ");
disp(B);
disp("Time taken by second account: ");
n=12;
z=log(B/P)/(n*log(1+r/(100*n)));
disp("years:")
disp(round(z));
disp("months:");
disp(abs(z-round(z))*12);

