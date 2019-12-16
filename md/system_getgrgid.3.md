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
      <div class="c54"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getgrgid(3f)</b> - [M_system:QUERY] get groupd name associated with a GID <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="8"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_getgrgid</b>(<i>gid</i>) result (<i>gname</i>)
<br />   class(*),intent(in)          :: gid   ! any INTEGER type
   character(len=:),allocatable :: gname
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_getlogin</b>() function returns a string containing the group name associated with the given GID. If no match is found it returns a
        null string and sets errno to indicate the error.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTION</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c55" width="6%" nowrap="nowrap">gid</td>

            <td valign="bottom">GID to try to look up associated group for. Can be of any INTEGER type.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c55" width="6%" nowrap="nowrap">gname</td>

            <td valign="bottom">returns the group name. Blank if an error occurs</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_getgrgid
   use M_system, only : system_getgrgid
   use M_system, only : system_getgid
   implicit none
   character(len=:),allocatable :: name
   name=system_getgrgid( system_getgid() )
   write(*,'("group[",a,"] for ",i0)')name,system_getgid()
   end program demo_system_getgrgid
<br />
</pre>Results:
        <pre>
   group[default] for 197121
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
</html>
