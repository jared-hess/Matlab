a = -2;
b = 2;
n = 20;
x = linspace(a,b,10);

[truex,truey] = fun1(a,b,100);

dx = [];
dy = [];

dxerr = [];
dyerr = [];

[dx,dy] = fun1(a,b,n);
[dxerr,dyerr] = fun2(a,b,n,(.05*2));

hold on;
%Upper left plot is lagrange, data, and the true polynomial.
subplot(2,2,1);
hold on;
scatter(dx,dy);
plot(x,lagrange(dx,dy,x));
plot(truex,truey);

%Upper right is lagrange, 5% error data, and the true ploynomial.
subplot(2,2,2);
hold on;
scatter(dxerr,dyerr);
plot(x,lagrange(dxerr,dyerr,x));
plot(truex,truey);

%Lower left is linear, data, and the true polynomial. 
subplot(2,2,3);
hold on;
scatter(dx,dy);
plot(x,linearinterp(dx,dy,x));
plot(truex,truey);

%And the lower right is linear, 5% error data, and the true polynomial.
subplot(2,2,4);
hold on;
scatter(dxerr,dyerr);
plot(x,linearinterp(dxerr,dyerr,x));
plot(truex,truey);
