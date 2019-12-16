<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c13"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_chmod(3f)</b> - [M_system] call <b>chmod</b>(3c) to change permission mode of a file relative to directory file descriptor
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_chmod</b>(filename,mode) <b>result</b>(<i>ierr</i>)
<br />      character(len=*),intent(in)  :: filename
      integer,value,intent(in)     :: mode
      integer                      :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_chmod</b>(3f) function shall change UID, _ISGID, S_ISVTX, and the file permission bits of the file named by the pathname pointed to by
        the path argument to the corresponding bits in the mode argument. The application shall ensure that the effective user ID of the process matches the
        owner of the file or the process has appropriate privileges in order to do this.

        <p>S_ISUID, S_ISGID, S_ISVTX, and the file permission bits are described in &lt;sys/stat.h&gt;.</p>

        <p>If the calling process does not have appropriate privileges, and if the group ID of the file does not match the effective group ID or one of the
        supplementary group IDs and if the file is a regular file, bit S_ISGID (set-group-ID on execution) in the file's mode shall be cleared upon
        successful return from <b>chmod</b>().</p>

        <p>Additional implementation-defined restrictions may cause the S_ISUID and S_ISGID bits in mode to be ignored.</p>

        <p>Upon successful completion, <b>system_chmod</b>() marks for update the last file status change timestamp of the file.</p>

        <p>Values for flag are constructed by a bitwise-inclusive OR of flags from the following list, defined in &lt;fcntl.h&gt;:</p>
      </blockquote><a name=""></a>

      <h4><a name="">AT_SYMLINK_NOFOLLOW</a></h4>

      <blockquote>
        If path names a symbolic link, then the mode of the symbolic link is changed.
      </blockquote>

      <p><a name="3"></a></p>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion, <b>system_chmod</b>(3f) returns 0. Otherwise, it returns <b>-1</b> and sets errno to indicate the error. If <b>-1</b> is
        returned, no change to the file mode occurs.
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLES</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_chmod
   use M_system, only : system_chmod
   use M_system, only : system_stat
   use M_system, only : R_GRP,R_OTH,R_USR,RWX_G,RWX_O
   use M_system, only : RWX_U,W_GRP,W_OTH,W_USR,X_GRP,X_OTH,X_USR
   use M_system, only : DEFFILEMODE, ACCESSPERMS
   use,intrinsic     :: iso_fortran_env, only : int64
   implicit none
   integer         :: ierr
   integer         :: status
   integer(kind=int64) :: buffer(13)
      !Setting Read Permissions for User, Group, and Others
      ! The following example sets read permissions for the owner, group, and others.
      open(file='_test1',unit=10)
      write(10,*)'TEST FILE 1'
      close(unit=10)
      ierr=system_chmod('_test1', IANY([R_USR,R_GRP,R_OTH]))
<br />      !Setting Read, Write, and Execute Permissions for the Owner Only
      ! The following example sets read, write, and execute permissions for the owner, and no permissions for group and others.
      open(file='_test2',unit=10)
      write(10,*)'TEST FILE 2'
      close(unit=10)
      ierr=system_chmod('_test2', RWX_U)
<br />      !Setting Different Permissions for Owner, Group, and Other
      ! The following example sets owner permissions for CHANGEFILE to read, write, and execute, group permissions to read and
      ! execute, and other permissions to read.
      open(file='_test3',unit=10)
      write(10,*)'TEST FILE 3'
      close(unit=10)
      ierr=system_chmod('_test3', IANY([RWX_U,R_GRP,X_GRP,R_OTH]));
<br />      !Setting and Checking File Permissions
      ! The following example sets the file permission bits for a file named /home/cnd/mod1, then calls the stat() function to
      ! verify the permissions.
<br />      ierr=system_chmod("home/cnd/mod1", IANY([RWX_U,RWX_G,R_OTH,W_OTH]))
      call system_stat("home/cnd/mod1", buffer,status)
<br />      ! In order to ensure that the S_ISUID and S_ISGID bits are set, an application requiring this should use stat() after a
      ! successful chmod() to verify this.
<br />      !    Any files currently open could possibly become invalid if the mode
      !    of the file is changed to a value which would deny access to
      !    that process.
<br />   end program demo_system_chmod
<br /><br />
</pre>
      </blockquote>
    </div>
  </div>
</body>
