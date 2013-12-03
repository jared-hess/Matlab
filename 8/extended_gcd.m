function [a, inva, invb] = extended_gcd(a,b)

x = 0;
lx = 1;
y = 1;
ly = 0;

while b~=0
	t = b;
	q = div(a,b);
	b = mod(a,b);
	a = t;
	
	t = x;
	x = lx - q*x;
	lx = t;

	t = y;
	y = ly - q*y;
	ly = t;
end

inva = lx;
invb = ly;
end

