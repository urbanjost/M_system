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
      <div class="c109"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_issock(3f)</b> - [M_system] checks if argument is a socket <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
logical function <b>system_issock</b>(<i>pathname</i>)
<br />   character(len=*),intent(in) :: pathname
   logical                     :: system_issock
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>issock</b>(3f) function checks if path is a path to a socket
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c110" width="6%" nowrap="nowrap">path</td>

            <td valign="bottom">a character string representing a socket <i>pathname</i>. Trailing spaces are ignored.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        The <b>system_issock</b>() function should always be successful and no return value is reserved to indicate an error.
      </blockquote><a name="5"></a>

      <h3><a name="5">ERRORS</a></h3>

      <blockquote>
        No errors are defined.
      </blockquote><a name="6"></a>

      <h3><a name="6">SEE ALSO</a></h3>

      <blockquote>
        <b>system_isreg</b>(3f), <b>system_stat</b>(3f), <b>system_isdir</b>(3f), <b>system_perm</b>(3f)
      </blockquote><a name="7"></a>

      <h3><a name="7">EXAMPLE</a></h3>

      <blockquote>
        check if filename is a socket
        <pre>
   program demo_system_issock
   Use M_system, only : system_issock
   implicit none
   integer                     :: i
   character(len=80),parameter :: names(*)=[ &amp;
   '/tmp            ', &amp;
   '/tmp/NOTTHERE   ', &amp;
   '/usr/local      ', &amp;
   '.               ', &amp;
   'sock.test       ', &amp;
   'PROBABLY_NOT    ']
   do i=1,size(names)
      write(*,*)' is ',trim(names(i)),' a socket? ', system_issock(names(i))
   enddo
   end program demo_system_issock
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
