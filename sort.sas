options ls=80 ps=30;
data bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
input no sex $ age class $ ext agl cop est opn;

proc  printto  log    = "/folders/myfolders/sas-tutorial/sort.log"
print  = "/folders/myfolders/sas-tutorial/sort.lst"   new;
run;

proc sort   data=bigfive; 
by class;

proc print  data=bigfive;
run;

proc means data=bigfive;
var ext agl cop est opn;
run;

proc printto;run;
