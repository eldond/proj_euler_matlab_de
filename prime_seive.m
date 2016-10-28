function primes=prime_seive(target)
% This is a prime seive: it will make an array from 2 to target and then test 
% the array for prime-ness all at once. That is, it will divide the array by 2
% and see which numbers have 0 remainder and flag them as not prime, then it
% will advance to the next non-flagged number in the array (3) and divide the
% array by that, again flagging anything that divides by 3 with a remainder of 
% 0. Actually, let's skip even numbers because we know they're not prime (except for 2).

%verified output up to 7.751461e+05

%sprintf('Starting prime seive with target = %d',target)

% make an array of only odd numbers and 2 so we can skip half the numbers
t2=floor((target+1)/2.);
x=[2,(2:t2)*2-1];
% set up the prime flag
nx=length(x);
prime_flag=ones(1,nx);

n=x(1);
i=1;
limit=100;
nlim=sqrt(x(nx))+1;
while ((n<nlim) & (i<limit))
	d=x./n;
	r=d-floor(d);
	zero_ind=find(~r);
	prime_flag(zero_ind)=0;
	in=find(~(x-n));
	n=x(in-1+find(prime_flag(in:nx)));
	prime_flag(i)=1; % this current number will divide by itself of course, so it will fail the prime test and lose its flag, but where it should not. It's useful to temporarily lose the flag while picking the next number, though
	if numel(n)<1
		n=x(nx); % end the loop by making this too big
		i=limit+1; % make this too big, too, just to be sure
	else
		n=n(1);
	end
	i=i+1;
end

primes=x(find(prime_flag));
