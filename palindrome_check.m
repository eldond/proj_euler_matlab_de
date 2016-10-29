%Check whether input is a palindromic number
function is_palindrome = palindrome_check(x,base)

%check inputs and assign defaults
if nargin<1
	x=0;
end
if nargin<2
	base=10;
end

display(sprintf('testing whether %d is a palindromic number in base %d',x,base))

%sanity check
if x<base
	display(sprintf('Input %d is only one digit in base %d. This test does not make sense. FAIL',x,base))
	is_palindrome=0;
	return
end

%easy version
if base==10
	b=sprintf('%d',x);
	is_palindrome=all(fliplr(b)==b);
	return
end

%hard version: have to change base first

b=change_base(x,base)

is_palindrome=all(fliplr(b)==b);
