# M_system.f90 and associated files

## NAME

   M_system - Fortran module for calling basic (mostly POSIX) C system routines

## DESCRIPTION

M_system(3f) is a module that allows Fortran to call commonly available C
routines that perform basic system operations like creating and deleting
files and directories, changing and querying file permits, getting basic
ID and process information, ... and other POSIX system requests.


## DOWNLOAD AND BUILD
Just download the github repository, enter the src/ directory and run make:

```bash
     git clone https://github.com/urbanjost/M_system.git
     cd M_system/src
     # change Makefile if not using gfortran(1)
     make
```
This will compile the M_system module and build all the example programs
in the PROGRAMS/ directory. There is an example program for each procedure
that is also part of the manpage for each procedure.

## SUPPORTS FPM

Alternatively, download the github repository and
build it with fpm(1) ( as described at [Fortran Package
Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_system.git
     cd M_system
     fpm build
     fpm test
```

Note that the unit test is dependent on several other modules built via
fpm(1) so it can not be run from the standard Makefile described above
(ie the test requires several other modules not in this repository but
if you are on the network fpm(1) will download an build those for the
test automatically.

or just list it as a dependency in your fpm.toml project file.

     [dependencies]
     M_system    = { git = "https://github.com/urbanjost/M_system.git" }

This will compile the M_system module and build all the example programs from
the document pages in the PROGRAMS/ sub-directory.

## DOCUMENTATION

 + There are *manpages* included in the man/ directory. 
 + These have been rendered into HTML and can be browsed one procedure at a time
   using the
   [*manpage index*](https://urbanjost.github.io/M_system/index.html)
 + or as a combined file in a
   [*Javascript BOOK*](https://urbanjost.github.io/M_system/docs/BOOK_M_system.html)
 + or as a single simple [*HTML file*](https://urbanjost.github.io/M_system/docs/M_system.html).
   if Javascript is not available.
