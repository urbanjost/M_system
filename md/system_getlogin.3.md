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
      <div class="c61"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getlogin(3f)</b> - [M_system:QUERY] get login name <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_getlogin</b>() result (<i>fname</i>)
<br />   character(len=:),allocatable :: FNAME
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_getlogin</b>() function returns a string containing the user name associated by the login activity with the controlling terminal of
        the current process. Otherwise, it returns a null string and sets errno to indicate the error.</p>

        <p>Three names associated with the current process can be determined:</p>

        <blockquote>
          <table cellpadding="3">
            <tr valign="top">
              <td width="3%">o</td>

              <td><b>system_getpwuid</b>(system_getuid()) returns the name associated with the real user ID of the process.</td>
            </tr>

            <tr valign="top">
              <td width="3%">o</td>

              <td><b>system_getpwuid</b>(system_geteuid()) returns the name associated with the effective user ID of the process</td>
            </tr>

            <tr valign="top">
              <td width="3%">o</td>

              <td><b>system_getlogin</b>() returns the name associated with the current login activity</td>
            </tr>
          </table>
        </blockquote>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c62" colspan="2">fname</td>
          </tr>

          <tr valign="top">
            <td width="3%"></td>

            <td>returns the login name.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_getlogin
   use M_system, only : system_getlogin
   implicit none
   character(len=:),allocatable :: name
   name=system_getlogin()
   write(*,'("login[",a,"]")')name
   end program demo_system_getlogin
<br />
</pre>Results:
        <pre>
   login[JSU]
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
</html>
