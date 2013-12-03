%Syntax:
%fun2(a,b,n,er)
%Where a is the left endpoint of a segment
%b is the right endpoint
%n is the number of points
%er is a real number representing the magnitude of the error to be introduced into the vector

function[x,y] = fun1(a,b,n,er)

r = (2*er).*rand(1,n) - er;
x = linspace(a,b,n);
y = x.^3 - x + r;

end
