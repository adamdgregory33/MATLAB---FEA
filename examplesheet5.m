%Given
L1=0.4;
L2=0.2;
m1=10;
m2=6;
I1=2*(10^-3);
I2=2*(10^-4);
W1=0.2;
A1=0.1;
A2=0.9;
W2=0.5;
c1=0.2;
c2=0.1;

%Solution
% for link1
Q1=20;
R01=[cosd(Q1) -sind(Q1);sind(Q1) cosd(Q1)];
V00=[0;9.81];
V01=(R01*V00);
V11=(V01+(L1*[-(W1)^2;A1]));
A11=(V01+(c1*[-(W1)^2;A1]));

% for link2
Q2=20;
R12=[cosd(Q2) -sind(Q2);sind(Q2) cosd(Q2)];
V12=(R12*V11);
V22=(V12+(L2*[-(W2)^2;A2]));
A22=(V12+(c1*[-(W2)^2;A2]));

% Link 1
F11=m1*A11;
N1=I1*A1;
% Link 2
F22=m2*A22;
N2=I2*A2;

% Inward Recursions
% Link 2
f33=[0;19.62];
Q3=-40;
R32=[cosd(Q3) -sind(Q3);sind(Q3) cosd(Q3)];
f32=R32*f33
f32y= f32(2);
f22=F22+f32
f22y= f22(2);
T2=(N2+(f22y*c2)+(f32y*(L2-c2)))

% Link 1
Q21=20;
R21=[cosd(Q21) -sind(Q21);sind(Q21) cosd(Q21)];
f21=R21*f22
f21y= f21(2);
f11=F11+f21
f11y= f11(2);
T1=(N1+T2+(f11y*c1)+(f21y*(L1-c1)))
