%Syntax:
%fun1(a,b,n)
%Where a is the left endpoint of a segment
%b is the right endpoint
%n is the number of points

function[x,y] = fun1(a,b,n)

x = linspace(a,b,n);
y = x.^3 - x;

end
