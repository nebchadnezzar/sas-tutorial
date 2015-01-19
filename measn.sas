data  bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
	  input no  sex $  age  class $  ext agl cop est opn;
	  proc means  maxdec=2 n mean std data=bigfive;
	  class class; 
	  var age ext agl cop est opn;
  run;
