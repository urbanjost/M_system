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
      <div class="c193"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_utime(3f)</b> - [M_system] set file access and modification times <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>utime</b>(pathname,times)
<br />        character(len=*),intent(in) :: pathname
        integer,intent(in),optional :: times(2)
        logical                     :: utime
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_utime</b>(3f) function sets the access and modification times of the file named by the path argument by calling <b>utime</b>(3c).

        <p>If <b>times</b>() is not present the access and modification times of the file shall be set to the current time.</p>

        <p>To use <b>system_utime</b>(3f) the effective user ID of the process must match the owner of the file, or the process has to have write permission
        to the file or has appropriate privileges,</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">times</td>

            <td valign="bottom">If present, the values will be interpreted as the access and modification times as Unix Epoch values. That is, they are
            times measured in seconds since the Unix Epoch.</td>
          </tr>

          <tr valign="top">
            <td class="c194" colspan="2">pathname</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>name of the file whose access and modification times are to be updated.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion .TRUE. is returned. Otherwise, and the file times remain unaffected.
      </blockquote><a name="5"></a>

      <h3><a name="5">ERRORS</a></h3>

      <blockquote>
        The underlying <b>utime</b>(3c) function fails if:

        <table cellpadding="3">
          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">EACCES</td>

            <td valign="bottom">Search permission is denied by a component of the path prefix; or the times argument is a null pointer and the effective
            user ID of the process does not match the owner of the file, the process does not have write permission for the file, and the process does not
            have appropriate privileges.</td>
          </tr>

          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">ELOOP</td>

            <td valign="bottom">A loop exists in symbolic links encountered during resolution of the path argument.</td>
          </tr>

          <tr valign="top">
            <td class="c194" colspan="2">ENAMETOOLONG</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>The length of a component of a pathname is longer than {NAME_MAX}.</td>
          </tr>

          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">ENOENT</td>

            <td valign="bottom">A component of path does not name an existing file or path is an empty string.</td>
          </tr>

          <tr valign="top">
            <td class="c194" colspan="2">ENOTDIR</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>A component of the path prefix names an existing file that is neither a directory nor a symbolic link to a directory, or the path argument
            contains at least one non-&lt;slash&gt; character and ends with one or more trailing &lt;slash&gt; characters and the last pathname component
            names an existing file that is neither a directory nor a symbolic link to a directory.</td>
          </tr>

          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">EPERM</td>

            <td valign="bottom">The times argument is not a null pointer and the effective user ID of the calling process does not match the owner of the
            file and the calling process does not have appropriate privileges.</td>
          </tr>

          <tr valign="top">
            <td class="c194" width="6%" nowrap="nowrap">EROFS</td>

            <td valign="bottom">The file system containing the file is read-only.</td>
          </tr>
        </table>
      </blockquote>

      <p>The <b>utime</b>() function may fail if:</p>
      <pre>
       ELOOP  More than {SYMLOOP_MAX} symbolic links were encountered
              during resolution of the path argument.
<br />       ENAMETOOLONG  The length of a pathname exceeds {PATH_MAX}, or
                     pathname resolution of a symbolic link produced
                     an intermediate result with a length that exceeds
                     {PATH_MAX}.
<br />
</pre><a name="6"></a>

      <h3><a name="6">EXAMPLES</a></h3>

      <blockquote>
        Sample program
        <pre>
      program demo_system_utime
      use M_system, only : system_utime, system_perror
      use M_time, only   : d2u
      implicit none
      character(len=4096) :: pathname
      integer             :: times(2)
      integer             :: i
         do i=1,command_argument_count()
            call get_command_argument(i, pathname)
            if(.not.system_utime(pathname,times))then
               call system_perror('*demo_system_utime*')
            endif
         enddo
      end program demo_system_utime
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
