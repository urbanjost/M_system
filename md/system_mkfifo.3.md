<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c123"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_mkfifo(3f)</b> - [M_system] make a FIFO special file relative to directory file descriptor <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_mkfifo</b>(pathname,mode) <b>result</b>(<i>ierr</i>)
<br />   character(len=*),intent(in)       :: pathname
   integer,intent(in)                :: mode
   integer :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        A regular pipe can only connect two related processes. It is created by a process and will vanish when the last process closes it.

        <p>A named pipe, also called a FIFO for its behavior, can be used to connect two unrelated processes and exists independently of the processes;
        meaning it can exist even if no one is using it. A FIFO is created using the <b>mkfifo</b>() library function.</p>

        <p>The <b>mkfifo</b>() function creates a new FIFO special file named by the pathname.</p>

        <p>The file permission bits of the new FIFO are initialized from mode.</p>

        <p>The file permission bits of the mode argument are modified by the process' file creation mask.</p>

        <p>When bits in mode other than the file permission bits are set, the effect is implementation-defined.</p>

        <p>If path names a symbolic link, <b>mkfifo</b>() shall fail and set errno to [EEXIST].</p>

        <p>The FIFO's user ID will be set to the process' effective user ID.</p>

        <p>The FIFO's group ID shall be set to the group ID of the parent directory or to the effective group ID of the process.</p>

        <p>Implementations shall provide a way to initialize the FIFO's group ID to the group ID of the parent directory.</p>

        <p>Implementations may, but need not, provide an implementation-defined way to initialize the FIFO's group ID to the effective group ID of the
        calling process.</p>

        <p>Upon successful completion, <b>mkfifo</b>() shall mark for update the last data access, last data modification, and last file status change
        timestamps of the file.</p>

        <p>Also, the last data modification and last file status change timestamps of the directory that contains the new entry shall be marked for
        update.</p>

        <p>Predefined variables are typically used to set permission modes.</p>

        <p>You can bytewise-OR together these variables to to create the most common permissions mode:</p>
        <pre>
    User:    R_USR  (read),  W_USR  (write),  X_USR(execute)
    Group:   R_GRP  (read),  W_GRP  (write),  X_GRP(execute)
    Others:  R_OTH  (read),  W_OTH  (write),  X_OTH(execute)
<br />
</pre>Additionally, some shortcuts are provided (basically a bitwise-OR combination of the above):
        <pre>
     Read + Write + Execute: RWX_U (User), RWX_G (Group), RWX_O (Others)
     DEFFILEMODE: Equivalent of 0666 =rw-rw-rw-
     ACCESSPERMS: Equivalent of 0777 = rwxrwxrwx
<br />
</pre>Therefore, to give only the user rwx (read+write+execute) rights whereas group members and others may not do anything, you can use any of the
following <b>mkfifo</b>() calls equivalently:
        <pre>
     ierr= mkfifo("myfile", IANY([R_USR, W_USR, X_USR]));
     ierr= mkfifo("myfile", RWX_U);
<br />
</pre>In order to give anyone any rights (mode 0777 = rwxrwxrwx), you can use any of the following calls equivalently:
        <pre>
     ierr= mkfifo("myfile",IANY([R_USR,W_USR,X_USR,R_GRP,W_GRP,X_GRP,R_OTH,W_OTH,X_OTH]));
     ierr= mkfifo("myfile",IANY([RWX_U,RWX_G,RWX_O]));
     ierr= mkfifo("myfile",ACCESSPERMS);
</pre>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        Upon successful completion, return 0. Otherwise, return <b>-1</b> and set errno to indicate the error. If <b>-1</b> is returned, no FIFO is created.
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLES</a></h3>

      <blockquote>
        The following example shows how to create a FIFO file named /home/cnd/mod_done, with read/write permissions for owner, and with read permissions for
        group and others.
        <pre>
   program demo_system_mkfifo
   use M_system, only : system_mkfifo, system_perror
   use M_system, only : R_GRP,R_OTH,R_USR,RWX_G,RWX_O
   use M_system, only : RWX_U,W_GRP,W_OTH,W_USR,X_GRP,X_OTH,X_USR
   use M_system, only : DEFFILEMODE, ACCESSPERMS
   implicit none
      integer :: status
      status = system_mkfifo("/tmp/buffer", IANY([W_USR, R_USR, R_GRP, R_OTH]))
      if(status.ne.0)then
         call system_perror('*mkfifo* error:')
      endif
   end program demo_system_mkfifo
<br />
</pre>Now some other process (or this one) can read from /tmp/buffer while this program is running or after, consuming the data as it is read.
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
