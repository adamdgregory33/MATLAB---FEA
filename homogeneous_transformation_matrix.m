
clc
clear

syms theta;
D = 0;
A = 0;
alpha = pi/2;

T1 = [cos(theta), -cos(alpha)*sin(theta), sin(alpha)*sin(theta), A*cos(theta);
    sin(theta),cos(alpha)*cos(theta),-sin(alpha)*cos(theta),A*sin(theta);
0,sin(alpha),cos(alpha),D;
0,0,0,1]

T1 = [cos(theta), 0*sin(theta), 1*sin(theta), A*cos(theta);
    sin(theta),0*cos(theta),-1*cos(theta),A*sin(theta);
0,1,0,D;
0,0,0,1];

syms theta2  A2;
alpha2 = 0;
D2 = 0;

T2 = [cos(theta2), -cos(alpha2)*sin(theta2), sin(alpha2)*sin(theta2), A2*cos(theta2);
    sin(theta2),cos(alpha2)*cos(theta2),-sin(alpha2)*cos(theta2),A2*sin(theta2);
0,sin(alpha2),cos(alpha2),D2;
0,0,0,1];

syms theta3 A3 ;

alpha3= 0;
D3 = 0;

T3 = [cos(theta3), -cos(alpha3)*sin(theta3), sin(alpha3)*sin(theta3), A3*cos(theta3);
    sin(theta3),cos(alpha3)*cos(theta3),-sin(alpha3)*cos(theta3),A3*sin(theta3);
0,sin(alpha3),cos(alpha3),D3;
0,0,0,1];

T1
T2
T3

T1*T2*T3