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
      <div class="c126"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_opendir(3f)</b> - [M_system] open directory stream by calling <b>opendir</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="11">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_opendir</b>(dirname,dir,ierr)
<br />   character(len=*), intent(in) :: dirname
   type(c_ptr)                  :: dir
   integer,intent(out)          :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_opendir</b>(3f) procedure opens a directory stream corresponding to the directory named by the dirname argument. The directory stream
        is positioned at the first entry.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion, a pointer to a C dir type is returned. Otherwise, these functions shall return a null pointer and set IERR to indicate
        the error.
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        <p>An error corresponds to a condition described in <b>opendir</b>(3c):</p>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">EACCES</td>

            <td valign="bottom">Search permission is denied for the component of the path prefix of dirname or read permission is denied for dirname.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">ELOOP</td>

            <td valign="bottom">A loop exists in symbolic links encountered during resolution of the dirname argument.</td>
          </tr>

          <tr valign="top">
            <td class="c127" colspan="2">ENAMETOOLONG</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>The length of a component of a pathname is longer than {NAME_MAX}.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">ENOENT</td>

            <td valign="bottom">A component of dirname does not name an existing directory or dirname is an empty string.</td>
          </tr>

          <tr valign="top">
            <td class="c127" colspan="2">ENOTDIR</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>A component of dirname names an existing file that is neither a directory nor a symbolic link to a directory.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">ELOOP</td>

            <td valign="bottom">More than {SYMLOOP_MAX} symbolic links were encountered during resolution of the dirname argument.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">EMFILE</td>

            <td valign="bottom">All file descriptors available to the process are currently open.</td>
          </tr>

          <tr valign="top">
            <td class="c127" colspan="2">ENAMETOOLONG</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>The length of a pathname exceeds {PATH_MAX}, or pathname resolution of a symbolic link produced an intermediate result with a length that
            exceeds {PATH_MAX}.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">ENFILE</td>

            <td valign="bottom">Too many files are currently open in the system.</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">APPLICATION USAGE</a></h3>

      <blockquote>
        The <b>opendir</b>() function should be used in conjunction with <b>readdir</b>(), <b>closedir</b>(), and <b>rewinddir</b>() to examine the contents
        of the directory (see the EXAMPLES section in <b>readdir</b>()). This method is recommended for portability.
      </blockquote><a name="6"></a>

      <h3><a name="6">OPTIONS</a></h3>

      <blockquote>
        dirname name of directory to open a directory stream for
      </blockquote><a name="7"></a>

      <h3><a name="7">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">dir</td>

            <td valign="bottom">pointer to directory stream. If an error occurred, it will not be associated.</td>
          </tr>

          <tr valign="top">
            <td class="c127" width="6%" nowrap="nowrap">ierr</td>

            <td valign="bottom">0 indicates no error occurred</td>
          </tr>
        </table>
      </blockquote><a name="8"></a>

      <h3><a name="8">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_opendir
   use M_system, only : system_opendir,system_readdir
   use M_system, only : system_closedir
   use iso_c_binding
   implicit none
   type(c_ptr)                  :: dir
   character(len=:),allocatable :: filename
   integer                      :: ierr
   !--- open directory stream to read from
   call system_opendir('.',dir,ierr)
   if(ierr.eq.0)then
      !--- read directory stream
      do
         call system_readdir(dir,filename,ierr)
         if(filename.eq.' ')exit
         write(*,*)filename
      enddo
   endif
   !--- close directory stream
   call system_closedir(dir,ierr)
   end program demo_system_opendir
</pre>
      </blockquote><a name="9"></a>
    </div>
  </div>
</body>
</html>
