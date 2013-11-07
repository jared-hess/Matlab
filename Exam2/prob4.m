hold on;

X = [-1,0,1,2]
Y = [1,0,1,2]

interp=polyfit(X,Y,length(X))

scatter(X,Y);

plot(linspace(min(X),max(X)),polyval(interp,linspace(min(X),max(X))));


