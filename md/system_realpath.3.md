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
      <div class="c147"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_realpath(3f)</b> - [M_system] call <b>realpath</b>(3c) to resolve a pathname <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_realpath</b>(<i>input</i>) <b>result</b>(<i>output</i>)
<br />       character(len=*),intent(in)  :: input
       character(len=:),allocatable :: output
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <b>system_realpath</b>(3f) calls the C routine <b>realpath</b>(3c) to obtain the absolute pathname of given path
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c148" width="6%" nowrap="nowrap">INPUT</td>

            <td valign="bottom">pathname to resolve</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c148" width="6%" nowrap="nowrap">OUTPUT</td>

            <td valign="bottom">The absolute pathname of the given <i>input</i> pathname. The pathname shall contain no components that are dot or dot-dot,
            or are symbolic links. It is equal to the NULL character if an error occurred.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_realpath
   use M_system, only : system_realpath, system_perror
   implicit none
   ! resolve each pathname given on command line
   character(len=:),allocatable :: pathi,patho
   integer                      :: i
   integer                      :: filename_length
      do i = 1, command_argument_count()
         ! get pathname from command line arguments
         call get_command_argument (i , length=filename_length)
         allocate(character(len=filename_length) :: pathi)
         call get_command_argument (i , value=pathi)
         !
         ! resolve each pathname
         patho=system_realpath(pathi)
         if(patho.ne.char(0))then
            write(*,*)trim(pathi),'=&gt;',trim(patho)
         else
            call system_perror('*system_realpath* error for pathname '//trim(pathi)//':')
            write(*,*)trim(pathi),'=&gt;',trim(patho)
         endif
         deallocate(pathi)
      enddo
      ! if there were no pathnames give resolve the pathname "."
      if(i.eq.1)then
         patho=system_realpath('.')
         write(*,*)'.=&gt;',trim(patho)
      endif
   end program demo_system_realpath
<br />
</pre>
      </blockquote>Example usage:
      <pre>
  demo_system_realpath
  .=&gt;/home/urbanjs/V600
<br />  cd /usr/share/man
  demo_system_realpath . .. NotThere
  .=&gt;/usr/share/man
  ..=&gt;/usr/share
  *system_realpath* error for pathname NotThere:: No such file or directory
  NotThere=&gt;NotThere
<br />
</pre>
    </div>
  </div>
</body>
</html>
