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
      <div class="c70"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getpwuid(3f)</b> - [M_system:QUERY] get login name associated with a UID <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="8"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_getpwuid</b>(<i>uid</i>) result (<i>uname</i>)
<br />   class(*),intent(in)          :: uid    ! any INTEGER type
   character(len=:),allocatable :: uname
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_getpwuid</b>() function returns a string containing the user name associated with the given UID. If no match is found it returns a
        null string and sets errno to indicate the error.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTION</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c71" width="6%" nowrap="nowrap">uid</td>

            <td valign="bottom">UID to try to look up associated username for. Can be of any INTEGER type.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c71" width="6%" nowrap="nowrap">uname</td>

            <td valign="bottom">returns the login name.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_getpwuid
   use M_system, only : system_getpwuid
   use M_system, only : system_getuid
   use,intrinsic     :: iso_fortran_env, only : int64
   implicit none
   character(len=:),allocatable :: name
   integer(kind=int64)              :: uid
      uid=system_getuid()
      name=system_getpwuid(uid)
      write(*,'("login[",a,"] has UID ",i0)')name,uid
   end program demo_system_getpwuid
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
</html>
