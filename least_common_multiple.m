%Find the least common multiple of a group of numbers
function LCM=least_common_multiple(x) %x should be an array of at least two natural numbers

%check inputs and assign defaults
if nargin<1
	x=[6,9];
end
nx=numel(x);

display(sprintf('Searching for the least common multiple of %s',mat2str(x)));

%find unique factors
allf=[];
for i=1:nx
	allf=[allf,factor(x(i))];
end
uf=unique(allf);
nuf=numel(uf);

%count the maximum number of occurrences (across input numbers) of each unique factor
count=zeros(1,nuf);
for i=1:nx
	f=factor(x(i));
	for j=1:nuf
		num=sum(f==uf(j));
		count(j)=max(count(j),num);
	end
end

%multiply all of the unique factors together, repeating as necessary for unique factors which are needed more than once
LCM=prod(uf.^count);

