%Observability 3rd_of_Order%
clc;
clear all;
%System Variables%

A = [ -2, 2, -1 ;
      0, 2, 1; 
      1, -4, 0 ];

C = [ 0, 0, 1];

%Observability Matrix%
% W0 = [C ; C*A ; C*A^2 ; ..... ; C*A^(n-1)] %
% If determinant of W0 is different than 0 %
% System is OBSERVABLE !! %
W0 = [C ; C*A ; C*A^2];

det_W0 = det(W0);