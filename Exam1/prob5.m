function [output] = myfun(input)
	sum = 0;
	input	
	for k = 1:length(input)
		k
		term = 0;
		if input(k) >= 2
			term=1/(k^(input(k)))
			if term >= 10^(-10)
				sum = sum +term
			end %if
		end %if
	end %for
	output = sum
end %function
