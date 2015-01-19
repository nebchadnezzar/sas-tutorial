data  bigfive;
infile '/folders/myfolders/sas-tutorial/bigfive.data';
	  input no  sex $  age  class $  ext agl cop est opn;
	  proc ttest  data=bigfive;
	    class sex;
		  var ext agl cop est opn;
		  run;

