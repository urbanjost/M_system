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
      <div class="c76"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getuid(3f)</b> - [M_system:QUERY] get real UID of current process from Fortran by calling <b>getuid</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="4"></a>

      <h3><a name="4">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_getuid</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_getuid</b>(3f) function shall return the real user ID of the calling process. The <b>getuid</b>() function shall always be successful
        and no return value is reserved to indicate the error.
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Get group ID from Fortran:
        <pre>
   program demo_system_getuid
   use M_system, only : system_getuid
   implicit none
      write(*,*)'UID=',system_getuid()
   end program demo_system_getuid
<br />
</pre>Results:
        <pre>
   UID=      197609
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
