%Stability 2nd of Order%
clc;
clear all;
%System Variables%

A = [ 0, 1 ;
       0, -1];

B = [ 0; 1];

%If Eigenvalues of A has real parts strictly 
%less then 0, the system is STABLE !!!!
Eig_A = eig(A);

       