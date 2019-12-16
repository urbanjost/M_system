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
      <div class="c166"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_setsid(3f)</b> - [M_system:QUERY] create session and set the process group ID of a session leader <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_setsid</b>(<i>pid</i>)
<b>integer</b>(kind=c_int) :: <i>pid</i>
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c167" width="6%" nowrap="nowrap">The</td>

            <td valign="bottom"><b>setsid</b>() function creates a new session, if the calling process is not a process group leader. Upon return the</td>
          </tr>

          <tr valign="top">
            <td class="c167" colspan="2">calling process shall be the session leader of this new session, shall be the process</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>group leader of a new process</td>
          </tr>

          <tr valign="top">
            <td class="c167" width="6%" nowrap="nowrap">group,</td>

            <td valign="bottom">and shall have no controlling terminal. The process group ID of the calling process shall be set equal to the</td>
          </tr>

          <tr valign="top">
            <td class="c167" colspan="2">process ID of the calling process. The calling process shall be the only process in the new process group</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>and the only process in the new session.</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c167" width="6%" nowrap="nowrap">Upon</td>

            <td valign="bottom">successful completion, <b>setsid</b>() shall return the value of the new process group ID of the calling process.
            Other&acirc;&euro; wise, it shall return &acirc;&circ;'1 and set errno to indicate the error.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        The <b>setsid</b>() function shall fail if:

        <blockquote>
          <table cellpadding="3">
            <tr valign="top">
              <td width="3%">o</td>

              <td>The calling process is already a process group leader</td>
            </tr>

            <tr valign="top">
              <td width="3%">o</td>

              <td>the process group ID of a process other than the calling process matches the process ID of the calling process.</td>
            </tr>
          </table>
        </blockquote>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Set SID from Fortran
        <pre>
   program demo_system_setsid
   use M_system,      only : system_setsid
   implicit none
      write(*,*)'SID=',system_setsid()
   end program demo_system_setsid
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
