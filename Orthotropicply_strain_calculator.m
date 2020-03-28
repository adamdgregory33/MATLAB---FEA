%Orthotropicply_strain_calculator
% This matlab code calculates the strain in an orthotropic ply under an
% applied stress. The calculations are undertaken for the ply oriented
% between 0 and 90 degrees in one degree intervals. The results are plotted
% to a graph. The input value given below match the example presented in
% Lecture 3.
%
% Input values here:
E1 = 131;
E2 = 8.8;
G12 = 5;
v12 =0.27;
Sigma = [0.1;0;0];
%The other values are then calculated
v21 = E2/E1*v12;
Q11=E1/(1-v12*v21);
Q22 = E2/(1-v12*v21);
Q12 = v12*E2/(1-v12*v21);
Q66 = G12;
U1 = 1/8*(3*Q11+3*Q22+2*Q12+4*Q66);
U2 = 1/2*(Q11-Q22);
U3 = 1/8*(Q11+Q22-2*Q12-4*Q66);
U4 = 1/8*(Q11+Q22+6*Q12-4*Q66);
U5 = 1/8*(Q11+Q22-2*Q12+4*Q66);
for i = 1:91
    theta = (i-1)/180*pi();
    Q11bar=U1+U2*cos(2*theta)+U3*cos(4*theta);
    Q12bar=U4-U3*cos(4*theta);
    Q22bar=U1-U2*cos(2*theta)+U3*cos(4*theta);
    Q16bar=0.5*U2*sin(2*theta)+U3*sin(4*theta);
    Q26bar=0.5*U2*sin(2*theta)-U3*sin(4*theta);
    Q66bar=U5-U3*cos(4*theta);
    Qbar = [Q11bar,Q12bar,Q16bar;Q12bar,Q22bar,Q26bar;Q16bar,Q26bar,Q66bar];
    epsilon = inv(Qbar)*Sigma;
    %put the results into an array
    result(i,:) = [theta; epsilon];
end
%and plot
p = plot(result(:,1),result(:,2)*100, result(:,1),result(:,3)*100, result(:,1), result(:,4)*100)
xlabel('Fibre orientaiton (rads)')
ylabel('strain (%)')
title('Plot of strain versus fibre orientation')
legend('epsilon x', 'epsilon y', 'gamma xy')
