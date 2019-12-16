<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c170"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_setumask(3f)</b> - [M_system] set the file mode creation umask <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
integer function <b>system_setumask</b>(<i>new_umask</i>) result (<i>old_umask</i>)
<br />    integer,intent(in)  :: new_umask
    integer(kind=c_int) :: umask_c
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_umask</b>(3f) function sets the file mode creation mask of the process to cmask and return the previous value of the mask. Only the
        file permission bits of cmask (see &lt;sys/stat.h&gt;) are used; the meaning of the other bits is implementation-defined.

        <p>The file mode creation mask of the process is used to turn off permission bits in the mode argument supplied during calls to the following
        functions:</p>

        <blockquote>
          <table cellpadding="3">
            <tr valign="top">
              <td class="c171" width="6%" nowrap="nowrap">*</td>

              <td valign="bottom"><b>open</b>(), <b>openat</b>(), <b>creat</b>(), <b>mkdir</b>(), <b>mkdirat</b>(), <b>mkfifo</b>(), and
              <b>mkfifoat</b>()</td>
            </tr>

            <tr valign="top">
              <td class="c171" width="6%" nowrap="nowrap">*</td>

              <td valign="bottom"><b>mknod</b>(), <b>mknodat</b>()</td>
            </tr>

            <tr valign="top">
              <td class="c171" width="6%" nowrap="nowrap">*</td>

              <td valign="bottom"><b>mq_open</b>()</td>
            </tr>

            <tr valign="top">
              <td class="c171" width="6%" nowrap="nowrap">*</td>

              <td valign="bottom"><b>sem_open</b>()</td>
            </tr>
          </table>
        </blockquote>

        <p>Bit positions that are set in cmask are cleared in the mode of the created file.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        The file permission bits in the value returned by <b>umask</b>() shall be the previous value of the file mode creation mask. The state of any other
        bits in that value is unspecified, except that a subsequent call to <b>umask</b>() with the returned value as cmask shall leave the state of the
        mask the same as its state before the first call, including any unspecified use of those bits.
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        No errors are defined.
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program
        <pre>
   program demo_setumask
   use M_system, only : system_getumask, system_setumask
   integer :: newmask
   integer :: i
   integer :: old_umask
   write(*,101)(system_getumask(),i=1,4)
   101 format(1x,i0,1x,"O'",o4.4,"'",1x,'Z"',z0,"'",1x,"B'",b12.12,"'")
   newmask=63
   old_umask=system_setumask(newmask)
   write(*,*)'NEW'
   write(*,101)(system_getumask(),i=1,4)
   end program demo_setumask
<br />
</pre>Expected output
        <pre>
    18 O'022' Z"12' B'000010010"
</pre>
      </blockquote><a name=""></a>

      <h4><a name="">NEW</a></h4>

      <blockquote>
        63 O'077' Z"3F' B'000111111"
      </blockquote>
      <hr />
    </div>
  </div>
</body>
