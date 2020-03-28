clc
clear
theta = 110;
x=  -1.3;
y = -3.1;
z=0;

matrix1 = [cosd(theta),-sind(theta),0,x;
    sind(theta),cosd(theta),0,y;
    0,0,1,z;
    0,0,0,1];

theta = -110;
x=-1.3*sind(20)+3.1*cosd(20);
y=-1.3*cosd(20)-3.1*sind(20);

matrix1



matrix2 = [cosd(theta),-sind(theta),0,x;
    sind(theta),cosd(theta),0,y;
    0,0,1,z;
    0,0,0,1];

matrix2

matrix2*matrix1

p = [2.5;1.2;2;1]
matrix1*p