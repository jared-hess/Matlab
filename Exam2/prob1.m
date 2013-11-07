%Our script

%a
subplot(2,2,1)
ezplot('x^2',[-1,1])

%b
subplot(2,2,2)
ezplot('x^3 - x',[-2,2])

%c
subplot(2,2,3)
%ezsurf('x^2 + y^2',[-2,2],[-2,2])
[X,Y] = meshgrid(linspace(-2,2))
Z = X.^2 + Y.^2;
surfc(X,Y,Z)

%d
subplot(2,2,4)
%ezmesh('x^2 + y^2',[-2,2],[-2,2])
meshc(X,Y,Z)
