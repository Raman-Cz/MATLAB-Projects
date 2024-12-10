y=@(x) x*exp(x)-2;
y0=0;
fzero(y,y0);
b=1;
mibnd(y,y0,b)
