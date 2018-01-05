clc;
clear all;
%system variables
df = [ -2*X*sin(1+X^2), -3*Y^2 ; 
       2*X,             4*Y];
   
df_inv = inv(df);   