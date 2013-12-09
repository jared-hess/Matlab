function [out] = adaptive_simpson(F,a,b,tol,Fl,Fm,Fr)

if nargin <= 3
	tol = 1.e-6;
end

h = b - a;

x = linspace(a,b,5);

if nargin == 7
	y = [Fl F(x(2)) Fm F(x(4)) Fr];
else
	y = F(x);
end

A3pt = (h/6)*(y(1) + 4*y(3) + y(5));

A5pt = (h/12)*(y(1) + 4*y(2) + 2*y(3) + 4*y(4) +y(5));

if abs(A5pt - A3pt) <= tol
	A = A5pt + (A5pt - A3pt)/15;
	fcount = 5;
	totalx = x;
else

	[Aleft lc ltx] = adaptive_simpson(F,x(1),x(3),tol,y(1),y(2),y(3));

	[Aright rc rtx] = adaptive_simpson(F,x(3),x(5),tol,y(3),y(4),y(5);

	A = Aleft + Aright;
	
	fcount = lc + rc -1;

	totalx = [ ltx(1:end-1) rtx ];
end 
