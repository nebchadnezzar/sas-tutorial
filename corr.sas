data  bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
  input no  sex $  age  class $  ext agl cop est opn;
  proc sort data=bigfive;
   by sex;
proc corr data=bigfive;
  var  ext agl cop est opn;
  by   sex;
run;

