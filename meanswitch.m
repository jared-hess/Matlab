%Lets you switch between 3 different means. 
%Syntax:
%meanswitch(input,option)
%input: a vector containing some number of elements
%option: a string containing either 'arithmetic', 'geometric', or 'harmonic'
%
%arithmetic: arithmetic mean. Sum divided by number of elements.
%geometric: geometric mean. Same formula as "good" option in the mygeomean function
%harmonic: 1/sum(1/elements)

function [out] = meanswitch(x,option)

	switch(option)
		case 'arithmetic'
		out = arithmean(x)
		case 'geometric'
		out = geomean(x)
		case 'harmonic'
		out = harmmean(x)
	end %switch
end %function

function [out] = arithmean(x)
	out = sum(x)/size(x,2);
end %function

function [out] = geomean(x)
	tmp = 0;
        for n = 1:size(x,2)
                tmp = tmp + log(x(n));
        end %for
        out = exp(tmp/size(x,2));
end %function

function [out] = harmmean(x)
	tmp = 0;
	for n = 1:size(x,2)
		tmp = tmp + (x(n)^-1);
	end %for

	out = (tmp/size(x,2))^-1;
end %function
