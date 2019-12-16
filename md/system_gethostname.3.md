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
      <div class="c57"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_gethostname(3f)</b> - [M_system:QUERY] get name of current host <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_gethostname</b>(string,ierr)
<br />       character(len=:),allocatable,intent(out) :: NAME
       integer,intent(out)                      :: IERR
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_gethostname</b>(3f) procedure returns the standard host name for the current machine.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c58" width="6%" nowrap="nowrap">string</td>

            <td valign="bottom">returns the hostname. Must be an allocatable CHARACTER variable.</td>
          </tr>

          <tr valign="top">
            <td class="c58" width="6%" nowrap="nowrap">ierr</td>

            <td valign="bottom">Upon successful completion, 0 shall be returned; otherwise, <b>-1</b> shall be returned.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_gethostname
<br />   use M_system, only : system_gethostname
   implicit none
   character(len=:),allocatable :: name
   integer                      :: ierr
<br />      call system_gethostname(name,ierr)
      if(ierr.eq.0)then
         write(*,'("hostname[",a,"]")')name
      else
         write(*,'(a)')'ERROR: could not get hostname'
      endif
<br />
</pre>

        <blockquote>
          end program demo_system_gethostname
        </blockquote>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
</html>
