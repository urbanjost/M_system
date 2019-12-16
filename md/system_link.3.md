<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c117"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_link(3f)</b> - [M_system] link one file to another file relative to two directory file descriptors <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="5">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
integer function <b>link</b>(oldpath,newpath);
<br />    character(len=*),intent(in) :: oldpath
    character(len=*),intent(in) :: newpath
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>link</b>() function shall create a new link (directory entry) for the existing file, path1.

        <p>The path1 argument points to a pathname naming an existing file. The path2 argument points to a pathname naming the new directory entry to be
        created. The <b>link</b>() function shall atomically create a new link for the existing file and the link count of the file shall be incremented by
        one.</p>

        <p>If path1 names a directory, <b>link</b>() shall fail unless the process has appropriate privileges and the implementation supports using
        <b>link</b>() on directories.</p>

        <p>If path1 names a symbolic link, it is implementation-defined whether <b>link</b>() follows the symbolic link, or creates a new link to the
        symbolic link itself.</p>

        <p>Upon successful completion, <b>link</b>() shall mark for update the last file status change timestamp of the file. Also, the last data
        modification and last file status change timestamps of the directory that contains the new entry shall be marked for update.</p>

        <p>If <b>link</b>() fails, no link shall be created and the link count of the file shall remain unchanged.</p>

        <p>The implementation may require that the calling process has permission to access the existing file.</p>

        <p>The <b>linkat</b>() function shall be equivalent to the <b>link</b>() function except that symbolic links shall be handled as specified by the
        value of flag (see below) and except in the case where either path1 or path2 or both are relative paths. In this case a relative path path1 is
        interpreted relative to the directory associated with the file descriptor fd1 instead of the current working directory and similarly for path2 and
        the file descriptor fd2. If the file descriptor was opened without O_SEARCH, the function shall check whether directory searches are permitted using
        the current permissions of the directory underlying the file descriptor. If the file descriptor was opened with O_SEARCH, the function shall not
        perform the check.</p>

        <p>Values for flag are constructed by a bitwise-inclusive OR of flags from the following list, defined in &lt;fcntl.h&gt;:</p>
      </blockquote><a name=""></a>

      <h4><a name="">AT_SYMLINK_FOLLOW</a></h4>

      <blockquote>
        If path1 names a symbolic link, a new link for the target of the symbolic link is created.
      </blockquote>

      <p>If <b>linkat</b>() is passed the special value AT_FDCWD in the fd1 or fd2 parameter, the current working directory shall be used for the respective
      path argument. If both fd1 and fd2 have value AT_FDCWD, the behavior shall be identical to a call to <b>link</b>(), except that symbolic links shall
      be handled as specified by the value of flag.</p>

      <blockquote>
        <p>Some implementations do allow links between file systems.</p>

        <p>If path1 refers to a symbolic link, application developers should use <b>linkat</b>() with appropriate flags to select whether or not the
        symbolic link should be resolved.</p>

        <p>If the AT_SYMLINK_FOLLOW flag is clear in the flag argument and the path1 argument names a symbolic link, a new link is created for the symbolic
        link path1 and not its target.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion, these functions shall return 0. Otherwise, these functions shall return <b>-1</b> and set errno to indicate the error.
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLES</a></h3>

      <blockquote>
        Creating a Link to a File
        <pre>
   program demo_system_link
   use M_system, only : system_link, system_perror
   integer :: ierr
   ierr = system_link('myfile1','myfile2')
   if(ierr.ne.0)then
      call system_perror('*demo_system_link*')
   endif
   end program demo_system_link
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
