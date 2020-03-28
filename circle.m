function circle(x,y,r,colour)
%x and y are the coordinates of the center of the circle
%r is the radius of the circle
%0.01 is the angle step, bigger values will draw the circle faster but
%you might notice imperfections (not very smooth)
figure(1)
title('Location plot')
xlabel('x (m)')
ylabel('y (m)')
axis([-2 5 -2 5])
grid on
grid minor
ang=0:0.01:2*pi; 
xp=r*cos(ang);
yp=r*sin(ang);
plot(x+xp,y+yp,colour);
plot(x,y,'Marker','x','Color',colour);

hold on
end