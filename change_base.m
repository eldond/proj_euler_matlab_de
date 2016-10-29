%Given a number in base 10, return a string representing the number in some other arbitrary base

function rebased = change_base(x,base)

%check inputs and assign defaults
if nargin<1
	x=0; %this is a boring default, sorry
end
if nargin<2
	base=2; %default
end

%find out how many digits
digits=2;
while x>base^digits
	digits=digits+1;
end

%display(sprintf('Base 10 %d will be %d digits long in base %d',x,digits,base))

letters='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-=_+;:,./<>?~`[]{}\|';

%make the output string full of spaces
b(1:digits)=' ';

y=x;
for i=1:digits
	j=base^(digits-i);
	k=floor(y/j);
	y=y-k*j;
	b(i)=letters(k+1);
end

rebased=b;
