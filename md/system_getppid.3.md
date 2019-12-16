<?
<body>
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
      <div class="c67"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getppid(3f)</b> - [M_system:QUERY] get parent process ID (PPID) of current process from Fortran by calling <b>getppid</b>(3c)
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_getppid</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_getppid</b>() function returns the parent process ID of the calling process.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        The <b>system_getppid</b>() function should always be successful and no return value is reserved to indicate an error.
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        No errors are defined.
      </blockquote><a name="5"></a>

      <h3><a name="5">SEE ALSO</a></h3>

      <blockquote>
        exec, <b>fork</b>(), <b>getpgid</b>(), <b>getpgrp</b>(), <b>getpid</b>(), <b>kill</b>(), <b>setpgid</b>(), <b>setsid</b>()
      </blockquote><a name="6"></a>

      <h3><a name="6">EXAMPLE</a></h3>

      <blockquote>
        Get parent process PID (PPID) from Fortran
        <pre>
   program demo_system_getppid
   use M_system, only : system_getppid
   implicit none
<br />   write(*,*)'PPID=',system_getppid()
<br />   end program demo_system_getppid
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
