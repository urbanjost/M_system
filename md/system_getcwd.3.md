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
      <div class="c38"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getcwd(3f)</b> - [M_system] call <b>getcwd</b>(3c) to get the pathname of the current working directory <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_getcwd</b>(output,ierr)
<br />       character(len=:),allocatable,intent(out) :: output
       integer,intent(out)                      :: ierr
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <b>system_getcwd</b>(3f) calls the C routine <b>getcwd</b>(3c) to obtain the absolute pathname of the current working directory.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c39" width="6%" nowrap="nowrap">OUTPUT</td>

            <td valign="bottom">The absolute pathname of the current working directory The pathname shall contain no components that are dot or dot-dot, or
            are symbolic links.</td>
          </tr>

          <tr valign="top">
            <td class="c39" width="6%" nowrap="nowrap">IERR</td>

            <td valign="bottom">is not zero if an error occurs.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
     program demo_system_getcwd
     use M_system, only : system_getcwd
     implicit none
     character(len=:),allocatable :: dirname
     integer                      :: ierr
     call system_getcwd(dirname,ierr)
     if(ierr.eq.0)then
        write(*,*)'CURRENT DIRECTORY ',trim(dirname)
     else
        write(*,*)'ERROR OBTAINING CURRENT DIRECTORY NAME'
     endif
     end program demo_system_getcwd
<br />
</pre>
      </blockquote>
    </div>
  </div>
</body>
</html>
