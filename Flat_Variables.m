clc; 
clear all;
syms F1(t) F2(t);
F1_dot_dot = diff(F1,t,2);
F2_dot_dot = diff(F2,t,2);
x6 = -atan(F1_dot_dot/(F2_dot_dot + 1));
diff(x6,2)