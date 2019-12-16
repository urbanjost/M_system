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
      <div class="c140"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_readdir(3f)</b> - [M_system] read a directory using <b>readdir</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_readdir</b>(dir,filename,ierr)
<br /> type(c_ptr),value                         :: dir
 character(len=:),intent(out),allocatable  :: filename
 integer,intent(out)                       :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p><b>system_readdir</b>(3f) returns the name of the directory entry at the current position in the directory stream specified by the argument DIR,
        and positions the directory stream at the next entry. It returns a null name upon reaching the end of the directory stream.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c141" width="6%" nowrap="nowrap">DIR</td>

            <td valign="bottom">A pointer to the directory opened by <b>system_opendir</b>(3f).</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c141" colspan="2">FILENAME</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>
              the name of the directory entry at the current position in the directory stream specified by the argument DIR, and positions the directory
              stream at the next entry.

              <p>The <b>readdir</b>() function does not return directory entries containing empty names. If entries for dot or dot-dot exist, one entry is
              returned for dot and one entry is returned for dot-dot.</p>

              <p>The entry is marked for update of the last data access timestamp each time it is read.</p>

              <p>reaching the end of the directory stream, the name is a blank name.</p>
            </td>
          </tr>

          <tr valign="top">
            <td class="c141" width="6%" nowrap="nowrap">IERR</td>

            <td valign="bottom">If IERR is set to non-zero on return, an error occurred.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_readdir
   use M_system, only : system_opendir,system_readdir
   use M_system, only : system_rewinddir,system_closedir
   use iso_c_binding
   implicit none
<br />   type(c_ptr)                  :: dir
   character(len=:),allocatable :: filename
   integer                      :: i, ierr
   !--- open directory stream to read from
   call system_opendir('.',dir,ierr)
   if(ierr.eq.0)then
      !--- read directory stream twice
      do i=1,2
         write(*,'(a,i0)')'PASS ',i
         do
            call system_readdir(dir,filename,ierr)
            if(filename.eq.' ')exit
            write(*,*)filename
         enddo
         call system_rewinddir(dir)
      enddo
   endif
   !--- close directory stream
   call system_closedir(dir,ierr)
<br />   end program demo_system_readdir
<br />
</pre>
      </blockquote><a name="6"></a>
    </div>
  </div>
</body>
</html>
