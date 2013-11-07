function [x1,x2] = quadform2(a,b,c)

x1 = (-b - sign(b)*sqrt((b^2) - 4*a*c))/(2*a);
x2 = c/(a*x1);
