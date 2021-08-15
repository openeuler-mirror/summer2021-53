virtual condition

@r1@
declarer name LIST_HEAD;
identifier lname;
@@

LIST_HEAD(lname);

@r2@
identifier r1.lname;
@@

 INIT_LIST_HEAD(&lname);

@depends on !condition@
identifier r1.lname;
@@

- INIT_LIST_HEAD(&lname);

@script:python depends on r2 && condition@
lname << r1.lname;
@@
