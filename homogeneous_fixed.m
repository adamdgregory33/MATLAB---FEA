
clc
clear

syms theta1 L1;
D1 = 0;

alpha = pi/2;

%T1 = [cos(theta1), -cos(alpha)*sin(theta1), sin(alpha)*sin(theta1), L1*cos(theta1);
%    sin(theta1),cos(alpha)*cos(theta1),-sin(alpha)*cos(theta1),L1*sin(theta1);
%0,sin(alpha),cos(alpha),D;
%0,0,0,1];

T1 = [cos(theta1), 0, sin(theta1), L1*cos(theta1);
    sin(theta1),0,-cos(theta1),L1*sin(theta1);
0,1,0,D1;
0,0,0,1];

syms theta2  L2;
alpha2 = 0;
D2 = 0;

T2 = [cos(theta2), -cos(alpha2)*sin(theta2), sin(alpha2)*sin(theta2), L2*cos(theta2);
    sin(theta2),cos(alpha2)*cos(theta2),-sin(alpha2)*cos(theta2),L2*sin(theta2);
0,sin(alpha2),cos(alpha2),D2;
0,0,0,1];

syms theta3 ;

A3=0;
alpha3= 0;
D3 = 0;

T3 = [cos(theta3), -cos(alpha3)*sin(theta3), sin(alpha3)*sin(theta3), A3*cos(theta3);
    sin(theta3),cos(alpha3)*cos(theta3),-sin(alpha3)*cos(theta3),A3*sin(theta3);
0,sin(alpha3),cos(alpha3),D3;
0,0,0,1];

T1
T2
T3

T = T1*T2*T3