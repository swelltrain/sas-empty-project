This is a set of directories forming a relatively sane layout for a SAS project with
a splash of SAS code to get things started.

Originally created as an example for WUSS 2012 Long Beach 
"An Introduction To SAS Version Control For SAS Programmers" paper and presentation.

Enjoy! -s

To Use:
git clone https://github.com/swelltrain/sas-empty-project.git

Then edit main.sas to change the %let project_root = 
to point to your local directory setup.

After that, submitting main.sas should result in the default test (test/test_default.sas) passing.

That is all.  It is just a foundation, shape and change it as you see fit for your own project.

Be sure to write and include your own tests as you develop your SAS code.  Good things to test in SAS are:
checking you have access to files you may be reading from
checking you have access to files you are writing to
checking your signon works if you use SAS Connect
checking you can read from data bases with SAS Access/SQL Passthrough
etc etc

In general, anything that can change in the environment outside your code is a good for a test.  What you are aiming for is if you were to take your project and copy it to another machine/environment, you should be able to run the test_suite through test mode and feel certain that your code will run ok if all the tests pass.

Contributing
  This is not the final say in how SAS projects should be organized.  If you would like to make changes/contribute, please fork on github.
