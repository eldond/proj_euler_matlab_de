%Project Euler Problem 4: Largest palindrome product
%
% A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
%
%Find the largest palindrome made from the product of two 3-digit numbers.

i=999:-1:100;
j=999:-1:100;
k=i'*j; % a 900 x 900 matrix of products of three digit numbers

kk=reshape(k,1,[]);
ks=sort(kk,'descend');

m=1;
while ~palindrome_check(ks(m))
	m=m+1;
end

ans=ks(m);

display(sprintf('%d is the largest palindromic number that is a product of two tree digit numbers. It is the %dth largest number in (100:999)''*(100:999)',ans,m))

#answer is 906609: confirmed
