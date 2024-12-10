%Raman Singh
%2022UEE4518
t=linspace(0,30,200);
x=[];y=[];z=[];
for i=1:200
    x(i)=(4-0.1*t(i))*sin(0.8*t(i));              %#ok<*SAGROW>
    y(i)=(4-0.1*t(i))*cos(0.8*t(i));
    z(i)=0.4*t(i)^1.5;
   
end
plot3(x,y,z);