function [out] = ZeroBeGone(x)
%explanation
out = [];
	for i = x
		if (i ~= 0)
			out = [out,i];
		end %if
	end %for
end %function
