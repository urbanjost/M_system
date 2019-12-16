<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c5"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_access(3f)</b> - [M_system] checks accessibility or existence of a pathname <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="6"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
logical function <b>system_access</b>(pathname,amode)
<br />   character(len=*),intent(in) :: pathname
   integer,intent(in)          :: amode
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_access</b>(3f) function checks pathname existence and access permissions. The function checks the pathname for accessibility
        according to the bit pattern contained in amode, using the real user ID in place of the effective user ID and the real group ID in place of the
        effective group ID.</p>

        <p>The value of amode is either the bitwise-inclusive OR of the access permissions to be checked (R_OK, W_OK, X_OK) or the existence test
        (F_OK).</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c6" colspan="1">pathname</td>
            <td>a character string representing a directory pathname. Trailing spaces are ignored.</td>
          </tr>

          <tr valign="top">
            <td class="c6" width="6%" nowrap="nowrap">amode</td>

            <td valign="bottom">bitwise-inclusive OR of the values R_OK, W_OK, X_OK, or F_OK.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        If not true an error occurred or the requested access is not granted
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        check if filename is accessible
        <pre>
       Sample program:
<br />          program demo_system_access
          Use M_system, only : system_access, F_OK, R_OK, W_OK, X_OK
          implicit none
          integer                     :: i
          character(len=80),parameter :: names(*)=[ &amp;
          '/usr/bin/bash   ', &amp;
          '/tmp/NOTTHERE   ', &amp;
          '/usr/local      ', &amp;
          '.               ', &amp;
          'PROBABLY_NOT    ']
          do i=1,size(names)
             write(*,*)' does ',trim(names(i)),' exist?    ', system_access(names(i),F_OK)
             write(*,*)' is ',trim(names(i)),' readable?     ', system_access(names(i),R_OK)
             write(*,*)' is ',trim(names(i)),' writeable?    ', system_access(names(i),W_OK)
             write(*,*)' is ',trim(names(i)),' executable?   ', system_access(names(i),X_OK)
          enddo
          end program demo_system_access
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
