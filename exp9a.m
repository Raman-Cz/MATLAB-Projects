%Raman Singh
%2022UEE4518
B=1.2;
L=4;
T=0.5;
x=linspace(-2,2,20);
z=linspace(-0.5,0,20);
grid on;
[X,Z]=meshgrid(x,z);
y1=(B/2).*(1-(2*X/L).^2).*(1-(2*Z/T).^2);
mesh(X,y1,Z);
hold on
y2=-(B/2).*(1-(2*X/L).^2).*(1-(2*Z/T).^2);
surf(X,y2,Z);
hold off
xlabel('x'); ylabel('y');zlabel('z');
%xlim([-2 2]);ylim([-1 1]); zlim([-0.25 0]);