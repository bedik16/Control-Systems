%Controllability%
clc;
clear all;
%System Variables%

A = [ -1, 1, 0;
       1, -1, 1;
       0, 1, -1];

B = [ 0; 1; 0];

%Controllability Matrix%
% Wc = [B, A*B, A^2*B, ..... A^(n-1)*B] %
% If determinant of Wc is different than 0 %
% System is CONTROLLABLE !! %
Wc = [B,A*B,A^2*B];

det_Wc = det(Wc);
       