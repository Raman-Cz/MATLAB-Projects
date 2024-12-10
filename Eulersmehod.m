%EULER'S 
h=0.1;x0=0;xf=0.4;

Vx=x0:h:xf;%Creating vector for x
Vy=[0 0 0 0 0];%Creating vector for y
Vy(1)=0;
for i=1:(length(Vx)-1)
    Vy(i+1)=Vy(i)+h*(Vx(i) + 2*Vy(i));
end
disp(Vy(length(Vy)));
