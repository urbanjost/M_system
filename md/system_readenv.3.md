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
      <div class="c144"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_readenv(3f)</b> - [M_system:ENVIRONMENT] step thru and read environment table <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_readenv</b>() <b>result</b>(<i>string</i>)
<br />       character(len=:),allocatable  :: string
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        A simple interface allows reading the environment variable table of the process. Call <b>system_initenv</b>(3f) to initialize reading the
        environment table, then call <b>system_readenv</b>(3f) can be called until a blank line is returned. If more than one thread reads the environment
        or the environment is changed while being read the results are undefined.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c145" width="6%" nowrap="nowrap">string</td>

            <td valign="bottom">the <i>string</i> returned from the environment of the form "NAME=VALUE"</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_readenv
   use M_system, only : system_initenv, system_readenv
   character(len=:),allocatable :: string
      call system_initenv()
      do
         string=system_readenv()
         if(string.eq.'')then
            exit
         else
            write(*,'(a)')string
         endif
      enddo
   end program demo_system_readenv
<br />
</pre>Sample results:
        <pre>
   USERDOMAIN_ROAMINGPROFILE=buzz
   HOMEPATH=\Users\JSU
   APPDATA=C:\Users\JSU\AppData\Roaming
   MANPATH=/home/urbanjs/V600/LIBRARY/libGPF/download/tmp/man:/home/urbanjs/V600/doc/man:::
   DISPLAYNUM=0
   ProgramW6432=C:\Program Files
   HOSTNAME=buzz
   XKEYSYMDB=/usr/share/X11/XKeysymDB
   PUBLISH_CMD=
   OnlineServices=Online Services
        :
        :
        :
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
</html>
