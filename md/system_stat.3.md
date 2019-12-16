<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c174"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>SYSTEM_STAT</b> - [M_system] Get file status information <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNTAX</a></h3>

      <blockquote>
        CALL <b>SYSTEM_STAT</b>(NAME, VALUES [, STATUS],[DEBUG])
        <pre>
   character(len=*),intent(in)          :: NAME
   integer(kind=int64),intent(out)      :: values(13)
   integer,optional,intent(out)         :: status
   integer,intent(in)                   :: debug
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>
	This function returns information about a file. No permissions
        are required on the file itself, but execute (search) permission
        is required on all of the directories in path that lead to the
        file. The elements that are obtained and stored in the array
        VALUES:
	</p>
        <pre>
      VALUES(1) Device ID
      VALUES(2) Inode number
      VALUES(3) File mode
      VALUES(4) Number of links
      VALUES(5) Owner's uid
      VALUES(6) Owner's gid
      VALUES(7) ID of device containing directory entry for file (0 if not available)
      VALUES(8) File size (bytes)
      VALUES(9) Last access time as a Unix Epoch time rounded to seconds
      VALUES(10) Last modification time as a Unix Epoch time rounded to seconds
      VALUES(11) Last file status change time as a Unix Epoch time rounded to seconds
      VALUES(12) Preferred I/O block size (-1 if not available)
      VALUES(13) Number of blocks allocated (-1 if not available)
<br />
</pre>Not all these elements are relevant on all systems. If an element is not relevant, it is returned as 0.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c175" width="6%" nowrap="nowrap">NAME</td>

            <td valign="bottom">The type shall be CHARACTER, of the default kind and a valid path within the file system.</td>
          </tr>

          <tr valign="top">
            <td class="c175" width="6%" nowrap="nowrap">VALUES</td>

            <td valign="bottom">The type shall be <b>INTEGER</b>(8), <b>DIMENSION</b>(13).</td>
          </tr>

          <tr valign="top">
            <td class="c175" width="6%" nowrap="nowrap">STATUS</td>

            <td valign="bottom">(Optional) status flag of type <b>INTEGER</b>(4). Returns 0 on success and a system specific error code otherwise.</td>
          </tr>

          <tr valign="top">
            <td class="c175" width="6%" nowrap="nowrap">DEBUG</td>

            <td valign="bottom">(Optional) print values being returned from C routine being called if value of 0 is used</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        program demo_system_stat
        <pre>
   use M_system, only : system_stat, system_getpwuid, system_getgrgid
   use M_time, only :   fmtdate, u2d
   use, intrinsic :: iso_fortran_env, only : int32, int64
   implicit none
<br />   integer(kind=int64)  :: buff(13)
   integer(kind=int32)  :: status
   character(len=*),parameter :: fmt_date='year-month-day hour:minute:second'
<br />   integer(kind=int64) :: &amp;
      Device_ID, Inode_number,     File_mode,  Number_of_links,  Owner_uid,         &amp;
      Owner_gid, Directory_device, File_size,  Last_access,      Last_modification, &amp;
      Last_status_change,  Preferred_block_size,  Number_of_blocks_allocated
   equivalence                                    &amp;
      ( buff(1)  , Device_ID                  ) , &amp;
      ( buff(2)  , Inode_number               ) , &amp;
      ( buff(3)  , File_mode                  ) , &amp;
      ( buff(4)  , Number_of_links            ) , &amp;
      ( buff(5)  , Owner_uid                  ) , &amp;
      ( buff(6)  , Owner_gid                  ) , &amp;
      ( buff(7)  , Directory_device           ) , &amp;
      ( buff(8)  , File_size                  ) , &amp;
      ( buff(9)  , Last_access                ) , &amp;
      ( buff(10) , Last_modification          ) , &amp;
      ( buff(11) , Last_status_change         ) , &amp;
      ( buff(12) , Preferred_block_size       ) , &amp;
      ( buff(13) , Number_of_blocks_allocated )
<br />   CALL SYSTEM_STAT("/etc/hosts", buff, status)
<br />   if (status == 0) then
      write (*, FMT="('Device ID(hex/decimal):',      &
      & T30, Z0,'h/',I0,'d')") buff(1),buff(1)
      write (*, FMT="('Inode number:',                &
      & T30, I0)") buff(2)
      write (*, FMT="('File mode (octal):',           &
      & T30, O19)") buff(3)
      write (*, FMT="('Number of links:',             &
      & T30, I0)") buff(4)
      write (*, FMT="('Owner''s uid/username:',       &
      & T30, I0,1x, A)") buff(5), system_getpwuid(buff(5))
      write (*, FMT="('Owner''s gid/group:',          &
      & T30, I0,1x, A)") buff(6), system_getgrgid(buff(6))
      write (*, FMT="('Device where located:',        &
      & T30, I0)") buff(7)
      write (*, FMT="('File size(bytes):',            &
      & T30, I0)") buff(8)
      write (*, FMT="('Last access time:',            &
      & T30, I0,1x, A)") buff(9), fmtdate(u2d(int(buff(9))),fmt_date)
      write (*, FMT="('Last modification time:',      &
      & T30, I0,1x, A)") buff(10),fmtdate(u2d(int(buff(10))),fmt_date)
      write (*, FMT="('Last status change time:',     &
      & T30, I0,1x, A)") buff(11),fmtdate(u2d(int(buff(11))),fmt_date)
      write (*, FMT="('Preferred block size(bytes):', &
      & T30, I0)") buff(12)
      write (*, FMT="('No. of blocks allocated:',     &
      & T30, I0)") buff(13)
   endif
<br />   end program demo_system_stat
<br />
</pre>Results:
        <pre>
   Device ID(hex/decimal):      3E6BE045h/1047257157d
   Inode number:                1407374886070599
   File mode (octal):                        100750
   Number of links:             1
   Owner's uid/username:        18 SYSTEM
   Owner's gid/group:           18 SYSTEM
   Device where located:        0
   File size(bytes):            824
   Last access time:            1557983191 2019-05-16 01:06:31
   Last modification time:      1557983191 2019-05-16 01:06:31
   Last status change time:     1557983532 2019-05-16 01:12:12
   Preferred block size(bytes): 65536
   No. of blocks allocated:     4
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
