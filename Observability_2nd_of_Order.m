%Observability%
clc;
clear all;
%System Variables%

A = [ -1, 0 ;
      0, -1];

C = [ 1, 0];

%Observability Matrix%
% W0 = [C ; C*A ; C*A^2 ; ..... ; C*A^(n-1)] %
% If determinant of W0 is different than 0 %
% System is OBSERVABLE !! %
W0 = [C ; C*A];

det_W0 = det(W0);