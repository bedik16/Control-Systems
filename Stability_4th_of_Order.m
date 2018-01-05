%Stability 4th of Order%
clc;
clear all;
%System Variables%

A = [  0, 0, 0, -2 ;
       1, 0, 0, 0  ;
       0, 1, 0, -3 ;
       0, 0, 1, 0 ];

B = [ 0; 0; 0; 0];

%If Eigenvalues of A has real parts strictly 
%less then 0, the system is STABLE !!!!
Eig_A = eig(A);

       