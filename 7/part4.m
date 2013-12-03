a = -2;
b = 2;
n = 6;
x = linspace(a,b,6);
[truex,truey] = fun1(a,b,100);

for i = 1:100
	err = i*.1*.01;
	hold on;

	[dx,dy] = fun1(a,b,n);
	[dxerr,dyerr] = fun2(a,b,n,(err*2));

	scatter(dxerr,dyerr);
	plot(x,lagrange(dxerr,dyerr,x));
	plot(truex,truey);
	
	F(i) = getframe;
end

movie(F,1,2);
