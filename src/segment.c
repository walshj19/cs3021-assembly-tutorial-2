long g = 256;

long p(long i, long j)
{
	long k;
	k = i + j;
	return (k << 2) - 1;
}

long q(long i)
{
	return p(g, -i);
}

long f(long n)
{
	if (n > 0) {
		return n*f(n-1);
	} else {
		return 1;
	}
}