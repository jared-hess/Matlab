%Affine Encryptor/Decryptor function
%Syntax:
%affine(option,input,a,b)
%
%option: char, either 'e' or 'd', for Encryption or Decryption respectively
%input: string of characters to be encrypted/decrypted
%a: integer (multiplier)
%b: interger (offset)
%
%Data is encrypted using the following:
% output = input*a + b mod charCount
% (charCount is an internal value representing the number of characters in the character set supported, in this case 95)
%
%Decryption and Ecryption should use the same numbers! The corresponding decryptor multiplier and offset will be calculated from the original ones

function [output] = affine(option,input,a,b)

if option == 'e'
	output = affine_encrypt(input,a,b);
end

if option == 'd'
	output = affine_decrypt(input,a,b);
end

end%function

%Encryptor
function [output] = affine_encrypt(input,a,b)

%Defs
charStart = 32;
charCount = 95;

%Affine Encryption
input = input - charStart;
input = mod(a*input + b,charCount);

%Output the cipher text converted back into chars
output = char(input + charStart);

end%function

%Decryptor function
function [output] = affine_decrypt(input,a,b)

%Defs
charStart = 32;
charCount = 95;

%Calculate the corresponding decryptor numbers
%x = mulinv(a, charCount);
[tmp1,tmp2,tmp3] = extended_gcd(a,charCount);
while (tmp2<0)
	tmp2 = tmp2+charCount;
end
x = tmp2;
y = mod(-1*x*b, charCount);

output = affine_encrypt(input,x,y);

end%function
