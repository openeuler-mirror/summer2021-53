@r@
identifier lock;
@@
struct mutex lock;

@p1@
identifier r.lock;
@@
- mutex_init(&lock);

@depends on p1@
identifier r.lock;
declarer name DEFINE_MUTEX;
@@
- struct mutex lock;
+ DEFINE_MUTEX(lock);

