clc;
clear all;
syms x1 x2 u;
f1 = x2;
f2 = 10-u^2/(1+x1)^2;
jacx = jacobian([f1,f2],[x1, x2])
jacu = jacobian([f1,f2],u)
