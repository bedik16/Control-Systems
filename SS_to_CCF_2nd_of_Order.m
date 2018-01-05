%State-Space to Canonical Controllability Form 2nd of order
clc;
clear all;
%System Definitions
A = [0, 2 ; -1, -3];
B = [0; 1];
%First Check if the system is Controllable.
Wc = [B, A*B];
det_Wc = det(Wc);  %If different from zero => CONTROLLABLE !!!
inv_Wc = inv(Wc);
%Define B_tilde and transpose of it
B_tilde = [0; 1];
B_tilde_t = transpose(B_tilde);
T1 = B_tilde_t*inv_Wc;
T2 = T1*A;
T = [T1 ; T2]; % TAKE T MATRIX AS A NOTE WITH A_TILDE !!
inv_T = inv(T);
%Coordinate Transform
A_tilde = T*A*inv_T;
B_tilde = T*B;


