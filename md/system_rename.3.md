<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c154"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_rename(3f)</b> - [M_system] call <b>rename</b>(3c) to rename a system file <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_rename</b>(input,output) <b>result</b>(<i>ierr</i>)
<br />   character(*),intent(in)    :: input,output
   integer                    :: ierr
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Rename a file by calling <b>rename</b>(3c). It is not recommended that the rename occur while either filename is being used on a file currently
        <b>OPEN</b>(3f) by the program.

        <p>Both the old and new names must be on the same device.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c155" width="6%" nowrap="nowrap">INPUT</td>

            <td valign="bottom">system filename of an existing file to rename</td>
          </tr>

          <tr valign="top">
            <td class="c155" width="6%" nowrap="nowrap">OUTPUT</td>

            <td valign="bottom">system filename to be created or overwritten by INPUT file. Must be on the same device as the INPUT file.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c155" width="6%" nowrap="nowrap">IERR</td>

            <td valign="bottom">zero (0) if no error occurs. If not zero a call to <b>system_errno</b>(3f) or <b>system_perror</b>(3f) is supported to
            diagnose error</td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
     program demo_system_rename
     use M_system, only : system_rename
     use M_system, only : system_remove
     use M_system, only : system_perror
     implicit none
     character(len=256) :: string
     integer            :: ios, ierr
<br />     ! try to remove junk files just in case
     ierr=system_remove('_scratch_file_')
     write(*,'(a,i0)') 'should not be zero ',ierr
     call system_perror('*demo_system_rename*')
     ierr=system_remove('_renamed_scratch_file_')
     write(*,'(a,i0)') 'should not be zero ',ierr
     call system_perror('*demo_system_rename*')
<br />     ! create scratch file to rename
     open(unit=10,file='_scratch_file_',status='new')
     write(10,'(a)') 'Test by renaming "_scratch_file_" to "_renamed_scratch_file_"'
     write(10,'(a)') 'IF YOU SEE THIS ON OUTPUT THE RENAME WORKED'
     close(10)
     ! rename scratch file
     ierr=system_rename('_scratch_file_','_renamed_scratch_file_')
     if(ierr.ne.0)then
        write(*,*)'ERROR RENAMING FILE ',ierr
     endif
     ! read renamed file
     open(unit=11,file='_renamed_scratch_file_',status='old')
     INFINITE: do
        read(11,'(a)',iostat=ios)string
        if(ios.ne.0)exit INFINITE
        write(*,'(a)')trim(string)
     enddo INFINITE
     close(unit=11)
<br />     ! clean up
     ierr=system_remove('_scratch_file_')
     write(*,'(a,i0)') 'should not be zero ',ierr
     ierr=system_remove('_renamed_scratch_file_')
     write(*,'(a,i0)') 'should be zero ',ierr
<br />     end program demo_system_rename
<br />
</pre>
      </blockquote>Expected output:
      <pre>
   &gt; should not be zero -1
   &gt; *demo_system_rename*: No such file or directory
   &gt; should not be zero -1
   &gt; *demo_system_rename*: No such file or directory
   &gt; Test by renaming "_scratch_file_" to "_renamed_scratch_file_"
   &gt; IF YOU SEE THIS ON OUTPUT THE RENAME WORKED
   &gt; should not be zero -1
   &gt; should be zero 0
<br />
</pre><a name="6"></a>
    </div>
  </div>
</body>
