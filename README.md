# f90_dep_bug
Demonstrate broken f90 dependency scanning in cmake

With cmake and a fortran compiler in your path, just run show_bug, which should output "DEP SCAN FAILED".
You can confirm that the dep scan is not working by trying to build with 'make -j2'.

If you remove the broken segment of code from ice_flux.F90, which is marked with comments, then re-running show_bug
or cmake should show that things now work. This indicates that the broken segment had some impact on the dependency
scanning that it should not have.

If either CPP ifdef is removed, the dep scanning works. If the 'use' statement is moved so that it happens before the CPP ifdefs,
then the dep scanning works.

