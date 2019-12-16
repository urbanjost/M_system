# M_system.f90 and associated files

## NAME

   M_system - Fortran module for calling basic (mostly POSIX) C system routines

## DESCRIPTION

This package is a self-contained version of the M_system library from
the GPF (General Purpose Fortran) package that has been extracted for
those just interested in a library of system-related functions. In the
GPF package this library is intertwined with several other large modules.

    git clone https://github.com/urbanjost/M_system.git
    cd M_system/src
    # change Makefile if not using gfortran(1) 
    make

This will compile the M_system module and build all the example programs from
the document pages in the PROGRAMS/ sub-directory.

<!--
s@<b>\(.*\)<.b>(3f)@<b><a href="md/\1.md">\1</a></b>(3f)@
-->
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_putenv.md">system_putenv</a></b>(3f): call <b>putenv</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getenv.md">system_getenv</a></b>(3f): function call to get_environment_variable</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_unsetenv.md">system_unsetenv</a></b>(3f): call <b>unsetenv</b>(3c) to remove variable from environment</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/set_environment_variable.md">set_environment_variable</a></b>(3f): set environment variable by calling <b>setenv</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_initenv.md">system_initenv</a></b>(3f): initialize environment table for reading</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_readenv.md">system_readenv</a></b>(3f): read next entry from environment table</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_clearenv.md">system_clearenv</a></b>(3f): emulate <b>clearenv</b>(3c) to clear environment</td> </tr>
</table>
</blockquote><a name="4"></a>
<h3><a name="4">FILE SYSTEM</a></h3>
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_chdir.md">system_chdir</a></b>(3f): call <b>chdir</b>(3c) to change current directory of a process</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getcwd.md">system_getcwd</a></b>(3f): call <b>getcwd</b>(3c) to get pathname of current working directory</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_stat.md">system_stat</a></b>(3f): determine system information of file by name</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_perm.md">system_perm</a></b>(3f): create string representing file permission and type</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_access.md">system_access</a></b>(3f): determine filename access or existence</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_isdir.md">system_isdir</a></b>(3f): determine if filename is a directory</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_islnk.md">system_islnk</a></b>(3f): determine if filename is a link</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_isreg.md">system_isreg</a></b>(3f): determine if filename is a regular file</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_isblk.md">system_isblk</a></b>(3f): determine if filename is a block device</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_ischr.md">system_ischr</a></b>(3f): determine if filename is a character device</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_isfifo.md">system_isfifo</a></b>(3f): determine if filename is a fifo - named pipe</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_issock.md">system_issock</a></b>(3f): determine if filename is a socket</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_realpath.md">system_realpath</a></b>(3f): resolve a pathname</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_chmod.md">system_chmod</a></b>(3f): call <b>chmod</b>(3c) to set file permission mode</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_chown.md">system_chown</a></b>(3f): call <b>chown</b>(3c) to set file owner</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getumask.md">system_getumask</a></b>(3f): call <b>umask</b>(3c) to get process permission mask</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_setumask.md">system_setumask</a></b>(3f): call <b>umask</b>(3c) to set process permission mask</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_mkdir.md">system_mkdir</a></b>(3f): call <b>mkdir</b>(3c) to create empty directory</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_mkfifo.md">system_mkfifo</a></b>(3f): call <b>mkfifo</b>(3c) to create a special FIFO file</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_link.md">system_link</a></b>(3f): call <b>link</b>(3c) to create a filename link</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_rename.md">system_rename</a></b>(3f): call <b>rename</b>(3c) to change filename</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_remove.md">system_remove</a></b>(3f): call <b>remove</b>(3c) to remove file</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_rmdir.md">system_rmdir</a></b>(3f): call <b>rmdir</b>(3c) to remove empty directory</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_unlink.md">system_unlink</a></b>(3f): call <b>unlink</b>(3c) to remove a link to a file</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_utime.md">system_utime</a></b>(3f): call <b>utime</b>(3c) to set file access and modification times</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/fileglob.md">fileglob</a></b>(3f): Returns list of files using a file globbing pattern</td> </tr>
</table>
</blockquote><a name="5"></a>
<h3><a name="5">STREAM IO</a></h3>
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getc.md">system_getc</a></b>(3f): get a character from stdin</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_putc.md">system_putc</a></b>(3f): put a character on stdout</td> </tr>
</table>
</blockquote><a name="6"></a>
<h3><a name="6">RANDOM NUMBERS</a></h3>
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_srand.md">system_srand</a></b>(3f): call <b>srand</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_rand.md">system_rand</a></b>(3f): call <b>rand</b>(3c)</td> </tr>
</table>
</blockquote><a name="7"></a>
<h3><a name="7">C ERROR INFORMATION</a></h3>
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_errno.md">system_errno</a></b>(3f): return <b>errno</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_perror.md">system_perror</a></b>(3f): call <b>perror</b>(3c) to display last C error message</td> </tr>
</table>
</blockquote><a name="8"></a>
<h3><a name="8">QUERIES</a></h3>
<blockquote>
<table cellpadding="3">
<tr valign="top"> <td valign="bottom"><b><a href="md/system_geteuid.md">system_geteuid</a></b>(3f): call <b>geteuid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getuid.md">system_getuid</a></b>(3f): call <b>getuid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getegid.md">system_getegid</a></b>(3f): call <b>getegid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getgid.md">system_getgid</a></b>(3f): call <b>getgid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getpid.md">system_getpid</a></b>(3f): call <b>getpid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getppid.md">system_getppid</a></b>(3f): call <b>getppid</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_gethostname.md">system_gethostname</a></b>(3f): get name of current host</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_uname.md">system_uname</a></b>(3f): call <b>my_uname</b>(3c) which calls <b>uname</b>(3c)</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getlogin.md">system_getlogin</a></b>(3f): get login name</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getpwuid.md">system_getpwuid</a></b>(3f): get login name associated with given UID</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_getgrgid.md">system_getgrgid</a></b>(3f): get group name associated with given GID</td> </tr>
<tr valign="top"> <td valign="bottom"><b><a href="md/system_cpu_time.md">system_cpu_time</a></b>(3f) : get processor time in seconds using <b>times</b>(3c)</td> </tr>
</table>
</blockquote>

