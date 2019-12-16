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
      <div class="c28"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_closedir(3f)</b> - [M_system] close a directory stream by calling <b>closedir</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="8"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_closedir</b>(dir,ierr)
<br />        type(c_ptr)         :: dir
        integer,intent(out) :: ierr
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>SYSTEM_CLOSEDIR</b>(3f) function closes the directory stream referred to by the argument DIR. Upon return, the value of DIR may no longer
        point to an accessible object.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c29" width="6%" nowrap="nowrap">dir</td>

            <td valign="bottom">directory stream pointer opened by <b>SYSTEM_OPENDIR</b>(3f).</td>
          </tr>

          <tr valign="top">
            <td class="c29" width="6%" nowrap="nowrap">ierr</td>

            <td valign="bottom">Upon successful completion, <b>SYSTEM_CLOSEDIR</b>(3f) returns 0; otherwise, an error has occurred.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        <b>system_closedir</b>(3f) may fail if:

        <table cellpadding="3">
          <!-- tsb: <B>system_closedir</B>(3f) may fail if:
 -->

          <tr>
            <td></td>
          </tr>

          <tr>
            <td></td>
          </tr>

          <tr valign="top">
            <td class="c29" width="6%" nowrap="nowrap">EBADF</td>

            <td valign="bottom">The dirp argument does not refer to an open directory stream.</td>
          </tr>

          <tr valign="top">
            <td class="c29" width="6%" nowrap="nowrap">EINTR</td>

            <td valign="bottom">The <b>closedir</b>() function was interrupted by a signal.</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program
        <pre>
   program demo_system_closedir
   use M_system, only : system_opendir,system_readdir
   use M_system, only : system_closedir, system_rewinddir
   use iso_c_binding, only : c_ptr
   implicit none
   type(c_ptr)                  :: dir
   character(len=:),allocatable :: filename
   integer                      :: ierr
   !--- open directory stream to read from
   call system_opendir('.',dir,ierr)
   !--- read directory stream
   do
      call system_readdir(dir,filename,ierr)
      if(filename.eq.' ')exit
      write(*,*)filename
   enddo
   call system_rewinddir(dir)
   !--- close directory stream
   call system_closedir(dir,ierr)
   end program demo_system_closedir
</pre>
      </blockquote>
    </div>
  </div>
</body>
</html>
