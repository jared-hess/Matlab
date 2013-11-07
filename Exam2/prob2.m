%Write a function that will take as input a matrix and a column vector. If the matrix is square solve a system of linear equations using inv(A)*b. If the matrix isn't square solve the matrix using a slash operator.

function [output] = prob2(A,b)

if (size(A,1) == size(A,2))
	output = inv(A) * b;
else
	output = A\b;
end%if

end%function
