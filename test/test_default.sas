%macro test_default;
  %local test_passed;
  %let test_passed = TRUE;
  
  /* default test to show template for test macros */
  
  data _null_;
    file logger mod;
    put "Running the default test";
  run;
  
  %put Running test_default;
  
  %* default test passes true;
   
    
  %if &test_passed = TRUE
   %then %do;
            %put default_test : test passed;
            data _null_;
              file logger mod;
              put "default test reports test passed.";
            run;
         %end;
         
  %else %do;
           %put default_test : test failed;
            data _null_;
              file logger mod;
              put "default test reports test failed.";
            run;
        %end;

%mend test_default;

%test_default;
