%Pole Placement OCF 3rd Order
clc;
clear all;
%System Definitions
A = [-2, 2, -1;
     0, 2, 1;
     1, -4, 0];
B = [0; 0; 1];
C = [0, 0, 1];
%First Check if the system is Observable.
W0 = [C ; C*A; C*A^2];
det_W0 = det(W0);  %If different from zero => OBSERVABLE !!!
inv_W0 = inv(W0);
%Define C_tilde and transpose of it
C_tilde = [0, 0, 1];
C_tilde_t = transpose(C_tilde);
V1 = inv_W0*C_tilde_t;
V2 = A*V1;
V3 = A*V2;
V = [V1 , V2, V3]; % TAKE V MATRIX AS A NOTE WITH A_TILDE !!
T = inv(V); % T=V^(-1)
%Coordinate Transform
A_tilde = T*A*V;
B_tilde = T*B;
C_tilde = C*V;
%Pole Placement
%set your desired polynomial by analougly
%for ex. if lambda1 = lambda2 = -1, 
%desired characteristic poly. is 
%(s-(-1))*(s-(-1))*(s-(-1)) = s^3 + 3s^2 + 3s + 1
%p0 = 1, p1 = 3, p2 =3
a0 = - A_tilde(1,3);
a1 = - A_tilde(2,3);
a2 = - A_tilde(3,3);
p0 = 1;
p1 = 3;
p2 = 3;
L1_tilde = p0 - a0;  %Remember it's tilde because we are still
L2_tilde = p1 - a1;  %at the z- coordinates 
L3_tilde = p2 - a2;
L_tilde = [ L1_tilde ; L2_tilde ; L3_tilde];
%Return back to x-coordinates
L = V*L_tilde; %Observer gains in x-Coordinates ; Thus = Answer !!!
%Double Check with the place function
L_place = transpose(acker(A',C',[-1 -1 -1]));
%Is A stable 
eig_A = eig(A);
%Is closed looped System is stable ???
eig_A_CL = eig( A - L*C);
