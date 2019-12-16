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
      <div class="c186"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_unlink(3f)</b> - [M_system] remove a directory entry relative to directory file descriptor <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="5">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
integer function <b>unlink</b>(<i>path</i>);
<br />    character(len=*) :: path
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>unlink</b>() function shall remove a link to a file. If <i>path</i> names a symbolic link, <b>unlink</b>() shall remove the symbolic link
        named by <i>path</i> and shall not affect any file or directory named by the contents of the symbolic link. Otherwise, <b>unlink</b>() shall remove
        the link named by the pathname pointed to by <i>path</i> and shall decrement the link count of the file referenced by the link.

        <p>When the file's link count becomes 0 and no process has the file open, the space occupied by the file shall be freed and the file shall no longer
        be accessible. If one or more processes have the file open when the last link is removed, the link shall be removed before <b>unlink</b>() returns,
        but the removal of the file contents shall be postponed until all references to the file are closed.</p>

        <p>The <i>path</i> argument shall not name a directory unless the process has appropriate privileges and the implementation supports using
        <b>unlink</b>() on directories.</p>

        <p>Upon successful completion, <b>unlink</b>() shall mark for update the last data modification and last file status change timestamps of the parent
        directory. Also, if the file's link count is not 0, the last file status change timestamp of the file shall be marked for update.</p>

        <p>Values for flag are constructed by a bitwise-inclusive OR of flags from the following list, defined in &lt;fcntl.h&gt;:</p>
      </blockquote><a name=""></a>

      <h4><a name="">AT_REMOVEDIR</a></h4>

      <blockquote>
        <p>Remove the directory entry specified by fd and <i>path</i> as a directory, not a normal file.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <p>Upon successful completion, these functions shall return 0. Otherwise, these functions shall return <b>-1</b> and set errno to indicate the
        error. If <b>-1</b> is returned, the named file shall not be changed.</p>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLES</a></h3>

      <blockquote>
        Removing a link to a file
        <pre>
   program demo_system_unlink
   use M_system, only : system_unlink, system_perror
   integer :: ierr
   ierr = system_unlink('myfile1')
   if(ierr.ne.0)then
      call system_perror('*demo_system_unlink*')
   endif
   end program demo_system_unlink
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
