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
      <div class="c9"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_chdir(3f)</b> - [M_system] call <b>chdir</b>(3c) from Fortran to change working directory <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="6"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_chdir</b>(<i>path</i>, <i>err</i>)
<br />    character(len=*)               :: path
    integer, optional, intent(out) :: err
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p><b>system_chdir</b>(3f) changes the current working directory of the calling process to the directory specified in <i>path</i>. The current
        working directory is the starting point for interpreting relative pathnames (those not starting with '/').</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <p>On success, zero is returned. On error, <b>-1</b> is returned, and errno is set appropriately.</p>
      </blockquote>

      <blockquote>
        Depending on the file system, other errors can be returned. The more general errors for <b>chdir</b>() are listed below, by their C definitions:

        <p>Errors</p>

        <table cellpadding="3">
          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">EACCES</td>

            <td valign="bottom">Search permission is denied for one of the components of <i>path</i>. (See also <b>path_resolution</b>(7).)</td>
          </tr>

          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">EFAULT</td>

            <td valign="bottom"><i>path</i> points outside your accessible address space.</td>
          </tr>

          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">EIO</td>

            <td valign="bottom">An I/O error occurred.</td>
          </tr>

          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">ELOOP</td>

            <td valign="bottom">Too many symbolic links were encountered in resolving <i>path</i>.</td>
          </tr>

          <tr valign="top">
            <td class="c10" colspan="2">ENAMETOOLONG</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td><i>path</i> is too long.</td>
          </tr>

          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">ENOENT</td>

            <td valign="bottom">The file does not exist.</td>
          </tr>

          <tr valign="top">
            <td class="c10" width="6%" nowrap="nowrap">ENOMEM</td>

            <td valign="bottom">Insufficient kernel memory was available.</td>
          </tr>

          <tr valign="top">
            <td class="c10" colspan="2">ENOTDIR</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>A component of <i>path</i> is not a directory.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">SEE ALSO</a></h3>

      <blockquote>
        <p><b>chroot</b>(2), <b>getcwd</b>(3), <b>path_resolution</b>(7)</p>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Change working directory from Fortran
        <pre>
     program demo_system_chdir
     use M_system, only : system_chdir
     implicit none
     integer :: ierr
<br />     call execute_command_line('pwd')
     call system_chdir('/tmp',ierr)
     call execute_command_line('pwd')
     write(*,*)'*CHDIR TEST* IERR=',ierr
<br />     end program demo_system_chdir
<br />
</pre>
      </blockquote>RESULTS: Sample run output:
      <pre>
     /home/urbanjs/V600
     /tmp
     *CHDIR TEST* IERR=           0
<br />
</pre>
      <hr />
    </div>
  </div>
</body>
</html>
