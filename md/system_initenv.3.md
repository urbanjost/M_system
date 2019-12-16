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
      <div class="c82"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_initenv(3f)</b> - [M_system:ENVIRONMENT] initialize environment table pointer and size so table can be read by <b>readenv</b>(3f)
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="4"></a>

      <h3><a name="4">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_initenv</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        A simple interface allows reading the environment variable table of the process. Call <b>system_initenv</b>(3f) to initialize reading the
        environment table, then call <b>system_readenv</b>(3f) until a blank line is returned. If more than one thread reads the environment or the
        environment is changed while being read the results are undefined.
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_initenv
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
   end program demo_system_initenv
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
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
