%State-Space to Canonical Controllability Form 3th of order
clc;
clear all;
%System Definitions
A = [0, 1, 0 ; -4, -0.1, 1 ; 0, 0, 0];
B = [0; 0 ; 1];
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
T = [T1 ; T2 ; T3]; % TAKE T MATRIX AS A NOTE WITH A_TILDE !!
inv_T = inv(T);
%Coordinate Transform
A_tilde = T*A*inv_T;
B_tilde = T*B;

