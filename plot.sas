data  bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
  input no  sex $  age  class $  ext agl cop est opn;
  proc plot data=bigfive;
  plot ext*cop;
  plot opn*extt=sex;
  run;
