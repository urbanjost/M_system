<?
<body?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta name="generator" content="HTML Tidy for Cygwin (vers 25 March 2009), see www.w3.org" />

  <title></title>
</head>

<body>
  <div id="Container">
    <div id="Content">
      <div class="c1"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>M_system(3fm)</b> - [M_system::INTRO] Fortran interface to C system interface <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="11"></a>

      <h3><a name="11">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>Public</b> objects:
<br />   ! ENVIRONMENT
   use m_system, only : set_environment_variable, system_unsetenv, &amp;
   system_putenv, system_getenv
<br />   use m_system, only :  system_intenv, system_readenv, system_clearenv
   ! FILE SYSTEM
   use M_system, only : system_getcwd, system_link,       &amp;
   system_mkfifo, system_remove, system_rename,           &amp;
   system_umask, system_unlink, fileglob,                 &amp;
   system_rmdir, system_chdir, system_mkdir,              &amp;
   system_stat, system_isdir, system_islnk, system_isreg, &amp;
   system_isblk, system_ischr, system_isfifo,             &amp;
   system_realpath,                                       &amp;
   system_access,                                         &amp;
   system_utime,                                          &amp;
   system_issock, system_perm,                            &amp;
   system_memcpy
<br />   !!use M_system, only : system_getc, system_putc
   ! ERROR PROCESSING
   use M_system, only : system_errno, system_perror
   ! INFO
   use M_system, only : system_getegid, system_geteuid, system_getgid, &amp;
   system_gethostname, system_getpid, system_getppid, system_setsid, &amp;
   system_getsid, system_getuid, system_uname
   ! SIGNALS
   use M_system, only : system_kill
   ! RANDOM NUMBERS
   use M_system, only : system_rand, system_srand
   ! PROCESS INFORMATION
   use M_system, only : system_cpu_time
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <b>M_system</b>(3fm) is a collection of Fortran procedures that call C or a C wrapper using the ISO_C_BINDING interface to access system calls.
        System calls are a special set of functions used by programs to communicate directly with an operating system.

        <p>Generally, system calls are slower than normal function calls because when you make a call control is relinquished to the operating system to
        perform the system call. In addition, depending on the nature of the system call, your program may be blocked by the OS until the system call has
        finished, thus making the execution time of your program even longer.</p>

        <p>One rule-of-thumb that should always be followed when calling a system call -- Always check the return value.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">ENVIRONMENT ACCESS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_putenv</b>(3f): call <b>putenv</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getenv</b>(3f): function call to <b>get_environment_variable</b>(3f)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_unsetenv</b>(3f): call <b>unsetenv</b>(3c) to remove variable from environment</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>set_environment_variable</b>(3f): set environment variable by calling <b>setenv</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_initenv</b>(3f): initialize environment table for reading</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_readenv</b>(3f): read next entry from environment table</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_clearenv</b>(3f): emulate <b>clearenv</b>(3c) to clear environment</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">FILE SYSTEM</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_chdir</b>(3f): call <b>chdir</b>(3c) to change current directory of a process</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getcwd</b>(3f): call <b>getcwd</b>(3c) to get pathname of current working directory</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_stat</b>(3f): determine system information of file by name</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_perm</b>(3f): create string representing file permission and type</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_access</b>(3f): determine filename access or existence</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_isdir</b>(3f): determine if filename is a directory</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_islnk</b>(3f): determine if filename is a link</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_isreg</b>(3f): determine if filename is a regular file</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_isblk</b>(3f): determine if filename is a block device</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_ischr</b>(3f): determine if filename is a character device</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_isfifo</b>(3f): determine if filename is a fifo - named pipe</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_issock</b>(3f): determine if filename is a socket</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_realpath</b>(3f): resolve a pathname</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_chmod</b>(3f): call <b>chmod</b>(3c) to set file permission mode</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_chown</b>(3f): call <b>chown</b>(3c) to set file owner</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getumask</b>(3f): call <b>umask</b>(3c) to get process permission mask</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_setumask</b>(3f): call <b>umask</b>(3c) to set process permission mask</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_mkdir</b>(3f): call <b>mkdir</b>(3c) to create empty directory</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_mkfifo</b>(3f): call <b>mkfifo</b>(3c) to create a special FIFO file</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_link</b>(3f): call <b>link</b>(3c) to create a filename link</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_rename</b>(3f): call <b>rename</b>(3c) to change filename</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_remove</b>(3f): call <b>remove</b>(3c) to remove file</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_rmdir</b>(3f): call <b>rmdir</b>(3c) to remove empty directory</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_unlink</b>(3f): call <b>unlink</b>(3c) to remove a link to a file</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_utime</b>(3f): call <b>utime</b>(3c) to set file access and modification times</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>fileglob</b>(3f): Returns list of files using a file globbing pattern</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">STREAM IO</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getc</b>(3f): get a character from stdin</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_putc</b>(3f): put a character on stdout</td>
          </tr>
        </table>
      </blockquote><a name="6"></a>

      <h3><a name="6">RANDOM NUMBERS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_srand</b>(3f): call <b>srand</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_rand</b>(3f): call <b>rand</b>(3c)</td>
          </tr>
        </table>
      </blockquote><a name="7"></a>

      <h3><a name="7">C ERROR INFORMATION</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_errno</b>(3f): return <b>errno</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_perror</b>(3f): call <b>perror</b>(3c) to display last C error message</td>
          </tr>
        </table>
      </blockquote><a name="8"></a>

      <h3><a name="8">QUERIES</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_geteuid</b>(3f): call <b>geteuid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getuid</b>(3f): call <b>getuid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getegid</b>(3f): call <b>getegid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getgid</b>(3f): call <b>getgid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getpid</b>(3f): call <b>getpid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getppid</b>(3f): call <b>getppid</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_gethostname</b>(3f): get name of current host</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_uname</b>(3f): call <b>my_uname</b>(3c) which calls <b>uname</b>(3c)</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getlogin</b>(3f): get login name</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getpwuid</b>(3f): get login name associated with given UID</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_getgrgid</b>(3f): get group name associated with given GID</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">o</td>

            <td valign="bottom"><b>system_cpu_time</b>(3f) : get processor time in seconds using <b>times</b>(3c)</td>
          </tr>
        </table>
      </blockquote><a name="9"></a>

      <h3><a name="9">FUTURE DIRECTIONS</a></h3>

      <blockquote>
        A good idea of what system routines are commonly required is to refer to the POSIX binding standards. (Note: IEEE 1003.9-1992 was withdrawn 6
        February 2003.) The IEEE standard covering Fortran 77 POSIX bindings is available online, though currently (unfortunately) only from locations with
        appropriate subscriptions to the IEEE server (e.g., many university networks). For those who do have such access, the link is: POSIX Fortran 77
        Language Interfaces (IEEE Std 1003.9-1992) (pdf)
      </blockquote><a name="10"></a>

      <h3><a name="10">SEE ALSO</a></h3>

      <blockquote>
        Some vendors provide their own way to access POSIX functions and make those available as modules; for instance ...

        <blockquote>
          <table cellpadding="3">
            <!-- tsb: Some vendors provide their own way to access POSIX functions and make
 -->

            <tr valign="top">
              <td width="3%">o</td>

              <td>the IFPORT module of Intel</td>
            </tr>

            <tr valign="top">
              <td width="3%">o</td>

              <td>or the f90_* modules of NAG.</td>
            </tr>

            <tr valign="top">
              <td width="3%">o</td>

              <td>
                There are also other compiler-independent efforts to make the POSIX procedures accessible from Fortran...

                <table width="100%" cellpadding="3">
                  <tr valign="top">
                    <td width="3%">o</td>

                    <td>Posix90 (doc),</td>
                  </tr>

                  <tr valign="top">
                    <td width="3%">o</td>

                    <td>flib.a platform/files and directories,</td>
                  </tr>

                  <tr valign="top">
                    <td width="3%">o</td>

                    <td>fortranposix.</td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </blockquote>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
