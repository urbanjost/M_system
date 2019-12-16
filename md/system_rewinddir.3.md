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
      <div class="c158"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_rewinddir(3f)</b> - [M_system] call <b>rewinddir</b>(3c) to rewind directory stream <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_rewinddir</b>(<i>dir</i>)
<br />    type(c_ptr),value :: dir
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Return to pointer to the beginning of the list for a currently open directory list.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c159" width="6%" nowrap="nowrap">DIR</td>

            <td valign="bottom">A C_pointer assumed to have been allocated by a call to <b>SYSTEM_OPENDIR</b>(3f).</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_rewinddir
   use M_system, only : system_opendir,system_readdir
   use M_system, only : system_rewinddir,system_closedir
   use iso_c_binding
   implicit none
<br />   type(c_ptr)                  :: dir
   character(len=:),allocatable :: filename
   integer                      :: i, ierr
   !&gt;&gt;&gt; open directory stream to read from
   call system_opendir('.',dir,ierr)
   !&gt;&gt;&gt; read directory stream twice
   do i=1,2
      write(*,'(a,i0)')'PASS ',i
      do
         call system_readdir(dir,filename,ierr)
         if(filename.eq.' ')exit
         write(*,*)filename
      enddo
      !&gt;&gt;&gt; rewind directory stream
      call system_rewinddir(dir)
   enddo
   !&gt;&gt;&gt; close directory stream
   call system_closedir(dir,ierr)
<br />   end program demo_system_rewinddir
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
</html>
