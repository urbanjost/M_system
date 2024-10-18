[![](docs/images/small_pc.gif)](https://urbanjost.github.io/M_system/fpm-ford/index.html)
# [M_system](https://urbanjost.github.io/M_system/man3.html)

## Name

   M_system - Fortran module for calling basic (mostly POSIX) C system routines

## Description

M_system(3f) is a module that allows Fortran to call commonly available C
routines that perform basic system operations like creating and deleting
files and directories, changing and querying file permits, getting basic
ID and process information, ... and other POSIX system requests.

MSWindows systems are not POSIX compliant, so on those platforms you
would need to use the Windows Subsystem for Linux (WSL) on Windows 10
or install CygWin or a similar product.

## Download and Build

Just download the github repository, enter the src/ directory and run make:

```bash
     git clone https://github.com/urbanjost/M_system.git
     cd M_system/src
     # change Makefile if not using one of the listed compilers

     # for gfortran
     make clean
     make gfortran

     # for ifort
     make clean
     make ifort

     # for nvfortran
     make clean
     make nvfortran
```
This will compile the M_system module and build all the example programs
in the example/ directory. There is an example program for each procedure
that is also part of the manpage for each procedure.

---
![fpm](docs/images/fpm_logo.gif)
---

## Supports FPM
#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

Alternatively, download the github repository and build it with
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_system.git
     cd M_system
     fpm test
     fpm run --example

This will compile the M_system module, run the unit tests and build all
the example programs from the document pages in the example/ sub-directory
and run them.

or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_system        = { git = "https://github.com/urbanjost/M_system.git" }
```

Note that the unit test is dependent on several other modules built via
fpm(1) so it can not be run from the standard Makefile described above
_(ie. the test requires several other modules not in this repository but
if you are on the network fpm(1) will download and build those for the
test automatically)_.

---
![docs](docs/images/docs.gif)
---

## Documentation

### User

 + There are *man-pages*. These have been rendered into HTML and can be
 browsed one procedure at a time
   using the
   [*manpage index*](https://urbanjost.github.io/M_system/man3.html)

 + or as a combined file in a
   [*Javascript BOOK*](https://urbanjost.github.io/M_system/BOOK_M_system.html)

 + The man-pages themselves can be installed On Unix-like systems for use with the
   man(1) command:
    + [manpages.zip](docs/manpages.zip)
    + [manpages.tgz](docs/manpages.tgz)

 + [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### Developer Documentation

<!--
### doxygen

- [doxygen(1) output](https://urbanjost.github.io/M_system/doxygen_out/html/index.html).

### ford
-->

- [ford(1) output](https://urbanjost.github.io/M_system/fpm-ford/index.html).

## See Also
 + [stdlib discussion on POSIX interfaces](https://github.com/fortran-lang/stdlib/issues/22#issuecomment-733021530)
