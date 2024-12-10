% M-file, mag_ field.m 
% M-file to calculate the net magnetic field produced 
% by a three-phase stator. 
% Set up the basic conditions 
bmax = 1; % Normalize bmax to 1 
freq = 60; % 60 Hz 
w = 2*pi * freq; % angular velocity (rad/s) 
% First, generate the three component magnetic fields 
t = linspace(0,100,1000);
Baa = sin(w*t) .*(cos(0) + 1i*sin(0));
Bbb = sin(w*t - 2*pi /3) * (cos(2*pi /3) + 1i*sin(2*pi /3)) ; 
Bcc = sin(w*t +2*pi /3) * (cos(- 2*pi /3) + 1i*sin(- 2*pi /3)) ; 
% Calculate Enet 
Bnet = Baa + Bbb + Bcc; 
% Calculate a circle representing the expected maximum 
% value of Enet 
circle = 1.5 * (cos (w*t ) + 1i*sin (w*t ) ) ; 
% Plot the magnitude and direction of the resulting magneti c 
% fields. Note that Baa is black, Bbb is blue, Bcc is 
% magenta , and Enet is red. 
for il = 1,length(t) 
% Plo t the reference c irc l e 
    plot(circle,'k'); 
    hold on; 
% Plot the four magnetic fields 
    plot( [0 real(Baa (il))] , [ 0 imag(Baa (il)) ],'k','LineWidth',2); 
    %plot ( [ 0 real(Bbb (il) ) ] , [ 0 imag(Bbb (il) ) ],'b','LineWidth',2) ; 
    %plot ( [ 0 real(Bcc (il) ) ] , [ 0 imag(Bcc (il) ) ] ,'m','LineWidth',2) ; 
    %plot ( [0 real(Bnet (il)) ] , [ 0 imag(Bnet (il)) ] ,'r','LineWidth',3 ) ; 
    axis square; 
    axis([-2 2 -2 2]); 
    drawnow; 
    hold off ; 
end