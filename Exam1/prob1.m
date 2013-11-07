v = 27*rand(1,1000)-3;
w = [];
u = [];
for i = 1:length(v)
	if v(i) < 0
		w = [w,v(i)]
	else
		u = [u,v(i)]
	end %if
end %for


