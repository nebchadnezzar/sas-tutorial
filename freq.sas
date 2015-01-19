data  bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
	  input no  sex $  age  class $  ext agl cop est opn;
	  proc freq data=bigfive;
    tables class;           
	  tables sex*class/chisq;　
		  run;
