%Controllability%
clc;
clear all;
%System Variables%

A = [  -14, 0 ;
       1, -3 ];

B = [ 1; 0];

%Controllability Matrix%
% Wc = [B, A*B, A^2*B, ..... A^(n-1)*B] %
% If determinant of Wc is different than 0 %
% System is CONTROLLABLE !! %
Wc = [B,A*B];

det_Wc = det(Wc);
       