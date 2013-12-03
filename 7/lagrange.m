function [y] = lagrange(dx,dy,x)

n = length(dx)
L = ones(n,length(x))
for i = 1:n
	for j = 1:n
		if (j ~= i)
			L(i,:)=L(i,:).*(x-dx(j))/(dx(i)-dx(j));
		end
	end
end

y = 0;
for i=1:n
	y=y+dy(i)*L(i,:);
end

end%function	
