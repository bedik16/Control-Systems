%State-Space to Observability Canonical Form 3rd of order
clc;
clear all;
%System Definitions
A = [0, 1, 0, 0 ; 
    -1, 0, 0, 0 ; 
     0, 0, 0, 1 ;
     0, 0, -2, 0 ];
B = [0; 0; 0; 0];
C = [1, 0, 1, 0];
%First Check if the system is Observable.
W0 = [C ; C*A ; C*A^2 ; C*A^3];
det_W0 = det(W0);  %If different from zero => OBSERVABLE !!!
inv_W0 = inv(W0);
%Define C_tilde and transpose of it
C_tilde = [0, 0, 0, 1];
C_tilde_t = transpose(C_tilde);
V1 = inv_W0*C_tilde_t;
V2 = A*V1;
V3 = A*V2;
V4 = A*V3;
V = [V1 , V2, V3, V4]; % TAKE V MATRIX AS A NOTE WITH A_TILDE !!
T = inv(V); % T=V^(-1)
%Coordinate Transform
A_tilde = T*A*V;
B_tilde = T*B;
C_tilde = C*V;
