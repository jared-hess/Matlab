%Set our degree. We want degree 4
deg = 4

%Generate vectors of random data and store them appropriately.
x = randint(1,12,[-5,5])
y = randint(1,12,[-5,5)

%Polyfit does a least squares fit to a polynomial curve of a given degree, which is exactly what we wan
P = polyfit(x,y,deg)




