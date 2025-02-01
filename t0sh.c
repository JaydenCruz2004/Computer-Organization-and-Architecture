// CSC 2110, Tutorial 1, Submission 1
// Tutorial 1: t0sh.c
// by Jayden Cruz

//  returns the number of permutations (ways to arrange in order) k items from n total, where 0 <= k <= n.

long int perm(long int n, long int k)
{
  if (k == 0)
    return 1;

    return n * perm(n-1, k-1);
}