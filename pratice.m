%Raman Singh 2022UEE4518
f=@(x)(1./(1+x.^2));
disp("Value using Integration");
x=quad(f,0,1);                                               %#ok<DQUAD>
%Trapezoidal
t1=trap(1/4);
t2=trap(1/6);
t3=trap(1/8);
hv=[1/4,1/6,1/8];
error=[abs(x-t1),abs(x-t2),abs(x-t3)];
plot(error,hv)
xlabel("h");ylabel("Error");
hold on;
%Simpsons 1/3 rule
simp1=simp(1/4);
simp2=simp(1/6);
simp3=simp(1/8);
error=[abs(x-simp1),abs(x-simp2),abs(x-simp3)];
plot(error,hv)
s1=simp38(1/4);
s2=simp38(1/6);
s3=simp38(1/8);
error=[abs(x-s1),abs(x-s2),abs(x-s3)];
plot(error,hv)
format long
hold off
function q=trap(h)
    f=@(x)(1./(1+x.^2));
    sol=0;
    for i=1:(1/h)-1
        sol=sol+2*f(i*h);
    end
    q=(h/2)*(f(0)+f(1)+sol);
end
function q=simp(h)
    f=@(x)(1./(1+x.^2));
    sol=0;
    for i=1:2:(1/h)-1
        sol=sol+4*f(i*h);
    end
    for i=2:2:(1/h)-1
        sol=sol+2*f(i*h);
    end
    q=(h/3)*(sol+f(0)+f(1));
end
%simpsons 3/8 rules

function q=simp38(h)
    f=@(x)(1./(1+x.^2));
    sol1=0;
    sol2=0;
    for i=1:1:(1/h)-1
        if rem(i,3)==0
            sol1=sol1+2*f(h*i);
        else
            sol2=sol2+3*f(h*i);
        end
    end
    q=(3*h/8)*(f(0)+f(1)+sol1+sol2);
end




    