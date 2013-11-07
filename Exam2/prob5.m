hold on;
%a
x=linspace(-3,3);
dx=linspace(-2,2,6);
dy=dx.^3.-dx;

y=lagrange(dx,dy,x);

scatter(dx,dy);
plot(x,y);

%b
x=linspace(-3,3);
dx=linspace(-2,2,6);
dy=dx.^3-dx+.5*rand(1,6);

%c
y=lagrange(dx,dy,x);
plot(x,y);
plot(x,(x.^3-x));
scatter(dx,dy);

%d
x=linspace(-3,3);
dx=linspace(-2,2,16);
dy=dx.^3-dx+.5*rand(1,16);
y=lagrange(dx,dy,x);
plot(x,y);
plot(x,(x.^3-x));
scatter(dx,dy);

