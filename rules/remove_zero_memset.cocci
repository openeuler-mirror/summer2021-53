@@
expression E, E2;
statement S;
@@

  E1 = kmem_cache_zalloc(...);
(
  if (unlikely(E1==NULL) || ...) S
|
  if ((E1==NULL) || ...) S
)
- memset(E1, 0, E2);

@@
expression E1, E2;
statement S;
@@
  E1 = kzalloc(...);
(
  if (unlikely(E1==NULL) || ...) S
|
  if ((E1==NULL) || ...) S
)
- memset(E1, 0, E2);
