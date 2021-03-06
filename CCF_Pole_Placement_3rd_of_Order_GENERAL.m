%Pole Placement CCF 3rd Order
clc;
clear all;
%System Definitions
A = [0, 1, 0 ; 
    -4, -0.1, 1; 
     0, 0, 0 ];
B = [0; 0; 1];
%First Check if the system is Controllable.
Wc = [B, A*B, A^2*B];
det_Wc = det(Wc);  %If different from zero => CONTROLLABLE !!!
inv_Wc = inv(Wc);
%Define B_tilde and transpose of it
B_tilde = [0; 0; 1];
B_tilde_t = transpose(B_tilde);
T1 = B_tilde_t*inv_Wc;
T2 = T1*A;
T3 = T2*A;
T = [T1 ; T2; T3]; % TAKE T MATRIX AS A NOTE WITH A_TILDE !!
inv_T = inv(T);
%Coordinate Transform
A_tilde = T*A*inv_T;
B_tilde = T*B;
%Pole Placement
%set your desired polynomial by analougly
%for ex. if lambda1 = lambda2 = -1, 
%desired characteristic poly. is 
%(s-(-1))*(s-(-1))*(s-(-1)) = s^3 + 3s^2 + 3s + 1
%p0 = 1, p1 = 3, p2 =3
a0 = - A_tilde(3,1);
a1 = - A_tilde(3,2);
a2 = - A_tilde(3,3);
p0 = 1;
p1 = 3;
p2 = 3;
K1_tilde = -p0 + a0;  %Remember it's tilde because we are still
K2_tilde = -p1 + a1;  %at the z- coordinates
K3_tilde = -p2 + a2;
K_tilde = [ K1_tilde , K2_tilde, K3_tilde];
%Return back to x-coordinates
K = K_tilde*T; %Controller gains in x-Coordinates ; Thus = Answer !!!
%%Just to be sure K_place will be implement with place func.
P = [-1, -1, -1]; %These are real poles not the characteristic polynomial's
K_place = -acker(A,B,P); %If an error appears: greater than rank(B)
                         % Change place with "acker"
%Check afterwards close-loop system is stable 
A_CL = A + B*K;
eig_A_CL = eig(A_CL); %If they are on left plane => stable !!!
eig_A = eig(A); %To see it wasn't stable before state-feedback