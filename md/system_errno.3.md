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
      <div class="c35"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_errno(3f)</b> - [M_system] C error return value <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="4"></a>

      <h3><a name="4">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_errno</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Many C routines return an error code which can be queried by errno. The <b>M_system</b>(3fm) is primarily composed of Fortran routines that call C
        routines. In the cases where an error code is returned vi <b>system_errno</b>(3f) these routines will indicate it.
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_errno
   use M_system, only : system_errno, system_unlink, system_perror
   implicit none
   integer :: stat
   stat=system_unlink('not there/OR/anywhere')
   if(stat.ne.0)then
           write(*,*)'err=',system_errno()
           call system_perror('*demo_system_errno*')
   endif
   end program demo_system_errno
<br />
</pre>Typical Results:
        <pre>
   err=           2
   *demo_system_errno*: No such file or directory
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
