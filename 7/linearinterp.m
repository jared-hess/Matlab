function y = linearinterp(dx,dy,x)

n = length(dx)
y = []
for x1 = x
	if x1 >= max(dx)
		lowIndex = n-1
		highIndex = n
	elseif x1 <= min(dx)
		lowIndex = 1;
		highIndex = 2;
	else
		lowIndex = max(find(dx < x1))
		highIndex = min(find(dx > x1))
	end%if

	y = [y, x1*((dy(highIndex) - dy(lowIndex))/(dx(highIndex) - dx(lowIndex)))]
end%for

end%func
