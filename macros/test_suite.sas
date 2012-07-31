

%macro test_suite;

  data _null_;
    file logger mod;
    put "Running the test suite.";
  run;
  
  filename test "&project_root.test";
  
  /* include the tests here you want to run
     ie %include test(test_default, test_other,etc);
   */
   
   %include test(test_default); 
   

%mend test_suite;