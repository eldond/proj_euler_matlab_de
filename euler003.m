% Project Euler Problem 3: Largest prime factor
%
% projecteuler.net
%
% The prime factors of 13195 are 5, 7, 13 and 29.
%
% What is the largest prime factor of the number 600851475143 ?
%
% Solution by David Eldon 2016-10-27

target=600851475143;

%step one: find primes with a prime seive

primes=prime_seive(sqrt(target));

%step two: see if they are factors of the target
d=target./primes;
r=d-floor(d);
factors=primes(find(~r));

%finally, pick the last one in the array (since it is sorted)
factors(end)

%answer = 6857 : verified
