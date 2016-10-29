% Project Euler Problem 7: 10001st prime
%
% projecteuler.net
%
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% What is the 10 001st prime number?
%
% Solution by David Eldon 2016-10-28

primes=prime_seive(1e6); %I didn't know what number to pick and this was just a guess that happened to work. Maybe there's a more elegant method
number_of_primes_found=numel(primes)
ans=primes(10001)

%answer = 104743 confirmed
