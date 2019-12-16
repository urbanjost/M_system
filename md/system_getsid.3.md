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
      <div class="c73"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getsid(3f)</b> - [M_system:QUERY] get the process group ID of a session leader <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="5"></a>

      <h3><a name="5">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_getsid</b>(<i>pid</i>)
<b>integer</b>(kind=c_int) :: <i>pid</i>
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_getsid</b>() function obtains the process group ID of the process that is the session leader of the process specified by <i>pid</i>.
        If <i>pid</i> is 0, it specifies the calling process.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion, <b>system_getsid</b>() shall return the process group ID of the session leader of the specified process. Otherwise, it
        shall return <b>-1</b> and set errno to indicate the error.
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Get SID from Fortran
        <pre>
   program demo_system_getsid
   use M_system,      only : system_getsid
   use ISO_C_BINDING, only : c_int
   implicit none
      write(*,*)'SID=',system_getsid(0_c_int)
   end program demo_system_getsid
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
