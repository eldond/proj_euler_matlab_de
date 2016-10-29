% Project Euler Problem 6: Sum square difference
%
% projecteuler.net
%
% The sum of the squares of the first ten natural numbers is,
%
% 1^2 + 2^2 + ... + 10^2 = 385
% The square of the sum of the first ten natural numbers is,
% (1 + 2 + ... + 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the first ten natural numbers and % the square of the sum is 3025 − 385 = 2640.
%
% Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
%
% Solution by David Eldon 2016-10-28

n=100;

i=1:n;

ans=sum(i)^2-sum(i.^2)

%ans = 25164150 confirmed
