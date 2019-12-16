<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c130"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_perm(3f)</b> - [M_system] get file type and permission as a string <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_perm</b>(<i>mode</i>) result (<i>perms</i>)
<br />   integer(kind=int64),intent(in)   :: MODE
   character(len=:),allocatable :: PERMS
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_perm</b>(3f) function returns a string containing the type and permission of a file implied by the value of the <i>mode</i>
        value.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c131" width="6%" nowrap="nowrap">PERMS</td>

            <td valign="bottom">returns the permission string in a format similar to that used by Unix commands such as <b>ls</b>(1).</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_perm
   use M_system, only : system_perm, system_stat
   use,intrinsic     :: iso_fortran_env, only : int64
   implicit none
   character(len=4096) :: string
   integer(kind=int64)     :: values(13)
   integer             :: ierr
   character(len=:),allocatable :: perms
      values=0
      call get_command_argument(1, string)  ! get pathname from command line
      call system_stat(string,values,ierr)  ! get pathname information
      if(ierr.eq.0)then
         perms=system_perm(values(3))       ! convert permit mode to a string
         ! print permits as a string, decimal value, and octal value
         write(*,'("for ",a," permits[",a,"]",1x,i0,1x,o0)') &amp;
                 trim(string),perms,values(3),values(3)
      endif
   end program demo_system_perm
<br />
</pre>Results:
        <pre>
   demo_system_perm /tmp
<br />   for /tmp permits[drwxrwxrwx --S] 17407 41777
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
