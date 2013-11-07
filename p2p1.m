%Set our degree. In this case we want cubic, which is degree 3
deg = 3

%Separate our data points into their respective X and Y coordinates
x = [0,.5,1,1.5,2,2.5,3,3.5,4,4.5,5]
y = [1,1,1.1,1.4,1.79,2.41,2.39,3.1,3.05,3.5,4]

%Polyfit does a least squares fit to a polynomial curve of a given degree, which is exactly what we want
P = polyfit(x,y,deg)




