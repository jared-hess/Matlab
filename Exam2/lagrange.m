function y = lagrange(dx,dy,x)

n = length(dx);
y = zeros(size(x));

for k = 1:n
	w = ones(size(x));
	for j = [1:k-1 k+1:n]
		w = (x-dx(j))./(dx(k) - dx(j)).*w;
	end%for
	y = y + w*dy(k);
end
