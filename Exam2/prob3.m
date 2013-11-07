%script

numUsers=3;
numItems=3;
total = [];

for user=1:numUsers
	for item=1:numItems
		disp(['User: ',num2str(user)])
		A(user,item)=input(['Quantity of item ',num2str(item), ': ']);
	end%for
	total(user,1)=input('Total Cost: ');
end

result = A\total;
disp('Costs: ')
for item=1:numItems
	disp(['Item',num2str(item),': ',num2str(result(item))])
end%for 
