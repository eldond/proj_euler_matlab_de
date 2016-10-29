% Project Euler Problem 1: Multiples of 3 and 5
%
% projecteuler.net
%
% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
%
% Find the sum of all the multiples of 3 or 5 below 1000.
%
% Solution by David Eldon 2016-08-28

a=3; %the first number we're interested in
b=5; %the second number we're interested in

range=[1,lim]; %the range we're interested in

x=range(1):range(2); % the numbers we're interested in (we're doing a seive technique)

aa=x/a-floor(x/a)==0; % find all the multiples of three
bb=x/b-floor(x/b)==0; % find all the multiples of five

k=find(~(aa+bb)); % aa+bb==0 for multiples of three or five

x(k)=0; %zero out anything that is not a multiple of three or five

sum(x) %find the sum
