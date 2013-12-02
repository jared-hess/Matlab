
function [output] = affine(option,input,a,b)

if option == 'e'
	output = affine_encrypt(input,a,b);
end

if option == 'd'
	output = affine_decrypt(input,a,b);
end

end%function


function [output] = affine_encrypt(input,a,b)

%Defs
charStart = 32;
charCount = 95;


input = input - charStart;
input = mod(a*input + b,charCount);

output = char(input + charStart);

end%function

function [output] = affine_decrypt(input,a,b)

%Defs
charStart = 32;
charCount = 95;

x = mulinv(a, charCount);
y = mod(-1*x*b, charCount);

output = affine_encrypt(input,x,y);

end%function
