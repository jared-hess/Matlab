% a) v>0 outputs a vector the same size as V, with a 1 in the column corresponding to if each element is greater than 0, and a 0 if not.
% b) v(v>0) outputs a vector with all the elements of v that match (item>0), so all the positive items.

function [geoOut,arithOut] = prob4(x)
%Returns geometric mean on the positive elements and arithmetic mean on non-positives

geoOut = 0;
arithOut = 0;
x = x(:)'
arithOut = mean(x(x<=0));
geoOut = geomean(x(x>0));

end


