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
      <div class="c182"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_uname(3f)</b> - [M_system] call a C wrapper that calls <b>uname</b>(3c) to get current system information from Fortran <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_uname</b>(WHICH,NAMEOUT)
<br />    character(KIND=C_CHAR),intent(in) :: WHICH
    character(len=*),intent(out)      :: NAMEOUT
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Given a letter, return a corresponding description of the current operating system. The NAMEOUT variable is assumed sufficiently large enough to
        hold the value.

        <table cellpadding="3">
          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">s</td>

            <td valign="bottom">return the kernel name</td>
          </tr>

          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">r</td>

            <td valign="bottom">return the kernel release</td>
          </tr>

          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">v</td>

            <td valign="bottom">return the kernel version</td>
          </tr>

          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">n</td>

            <td valign="bottom">return the network node hostname</td>
          </tr>

          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">m</td>

            <td valign="bottom">return the machine hardware name</td>
          </tr>

          <tr valign="top">
            <td class="c183" width="6%" nowrap="nowrap">T</td>

            <td valign="bottom">test mode -- print all information, in the following order - srvnm</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Call <b>uname</b>(3c) from Fortran
        <pre>
   program demo_system_uname
      use M_system, only : system_uname
      implicit none
      integer,parameter          :: is=100
      integer                    :: i
      character(len=*),parameter :: letters='srvnmxT'
      character(len=is)          :: string=' '
<br />      do i=1,len(letters)
         write(*,'(80("="))')
         call system_uname(letters(i:i),string)
         write(*,*)'=====&gt; TESTING system_uname('//letters(i:i)//')---&gt;'//trim(string)
      enddo
<br />   end program demo_system_uname
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
</html>
