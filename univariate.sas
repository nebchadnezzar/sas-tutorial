data  bigfive;
  infile '/folders/myfolders/sas-tutorial/bigfive.datai';
  input no  sex $  age  class $  ext agl cop est opn;
  proc classariate data=bigfive;
    var age ext agl cop est opn;  
	run;
