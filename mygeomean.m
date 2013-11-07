%Find the geometric mean a couple different ways.
%Syntax:
%mygeomean(input,'good'|'bad'|'matlab')
%input is a vector. The next agument is a string containing either "good" "bad" or "matlab"
%Using option "bad" simply takes the product of all members of the vector and raises it to the 1/n power.
%Using option "good" takes the sum of the natural log of all the elements, divites this by the size of the vector passed in, and outputs e to this power.
%"matlab" option simply outputs the standard matlab geomean function result for the input. This was added for convenience in testing.
function [out] = mygeomean(x,option)

	switch(option)
		case 'good'
		out = good(x);
		case 'bad'
		out = bad(x);
		case 'matlab'
		out = geomean(x);
	end %switch
	out = bad(x);
end %function

function [out] = bad(x)
	out = prod(x)^(1/size(x,2));
end %function

function [out] = good(x)
	tmp = 0;
	for n = 1:size(x,2)
		tmp = tmp + log(x(n));
	end %for
	out = exp(tmp/size(x,2));
	
end %function

