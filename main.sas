/*
  main.sas is the starting execution point for your project

  Specify which macros to include and then put them in 
  the order you would like them submitted in %main

*/

* You must change project_root.  Be sure to include the trailing delimiter:
  unix example: /my/project/root/
  window example: c:\my\project\root\
;
%let project_root = C:\Data\wuss2012\git\projects\sas-empty-project\;  

%*let mode = PROD; %let mode = TEST;
filename logger "&project_root.log\logger.txt";

data _null_;
  file logger;
  put "Running project.";
run;

%include "&project_root.config/options.sas";
%include "&project_root.config/global_macro_variables.sas";

filename macros "&project_root.macros";
* sets up an aggregate fileref to be used in subsequent %include stmt;

/*
  Example:
    If your macros directory contains three files: 
      calculate_sales.sas 
      update.sas
      finalize.sas
    Then your %include statement looks like:
      %include macros( calculate_sales, update, finalize);
*/
%include macros(test_suite); * add your own comma, separated;

filename libnames "&project_root.libnames";
/* include libname file the same way as macro */
%include libnames(defaults); * add your own comma,separated;

%macro main;
  %if &mode = TEST %then %goto test;
  /* name your macros in the order you want them executed 
     Example:
       %calculate_sales;

       %update(for_sure=YES);

       %finalize;
  */
%return;
%test:
  %test_suite;
%mend main;

%main;

