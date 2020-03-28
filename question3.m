%Given
L1=0.8;
L2=0.4;
m1=6;
m2=3;
I1=0.8;
I2=0.3;

W1=2;
A1=10;
A2=5;
W2=3;
c1=0.4;
c2=0.2;

%Solution
% for link1
Q1=-20;

R01=[cosd(Q1) -sind(Q1);sind(Q1) cosd(Q1)];
V00=[0;9.81];
V01=(R01*V00)
V11=(V01+(L1*[-(W1)^2;A1]))
A11=(V01+(c1*[-(W1)^2;A1]))

% for link2
Q2=0;

R12=[cosd(Q2) -sind(Q2);sind(Q2) cosd(Q2)]
V12=(R12*V11)
V22=(V12+(L2*[-(W2)^2;A2]))
A22=(V12+(c2*[-(W2)^2;A2]))

% Link 1
F11=m1*A11
N1=I1*A1

% Link 2
F22=m2*A22
N2=I2*A2

% Inward Recursions
% Link 2
f33=[0;-20];
Q3=0;


R32=[cosd(Q3) -sind(Q3);sind(Q3) cosd(Q3)]
f32=R32*f33 + [0 ;0]
%ADD EXTERBAL  LINEAR FORCE HERE
f32y= f32(2);
f22=F22+f32
f22y= f22(2)

T2=(N2+(f22y*c2)+(f32y*(L2-c2))) + 5
%subtract the external torque applied to the link?

