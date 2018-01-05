%Z-Coordinate Transform
clc;
clear all;
%System variables
A = [ 0, 1; 2, -3];
B = [0 ; 1];
C = [1, 0];
%T matrix (Given in the question)
T = [3, 1; 1 0];
%Coordinate Transform
A_tilde = T*A*inv(T);
B_tilde = T*B;
C_tilde = C*inv(T);