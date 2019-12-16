<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c162"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_rmdir(3f)</b> - [M_system] call <b>rmdir</b>(3c) to remove empty directories <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_rmdir</b>(<i>dirname</i>) <b>result</b>(<i>err</i>)
<br />    character(*),intent(in) :: dirname
    integer(c_int) :: err
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c163" colspan="2">DIRECTORY</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>The name of a directory to remove if it is empty</td>
          </tr>

          <tr valign="top">
            <td class="c164" width="6%" nowrap="nowrap">err</td>

            <td valign="bottom">zero (0) if no error occurred</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_rmdir
   use M_system, only : system_perror
   use M_system, only : system_rmdir, system_mkdir
   use M_system, only : RWX_U
   implicit none
   integer :: ierr
   write(*,*)'BEFORE TRY TO CREATE _scratch/'
   call execute_command_line('ls -ld _scratch')
<br />   write(*,*)'TRY TO CREATE _scratch/'
   ierr=system_mkdir('_scratch',RWX_U)
   write(*,*)'IERR=',ierr
   call execute_command_line('ls -ld _scratch')
<br />   write(*,*)'TRY TO REMOVE _scratch/'
   ierr=system_rmdir('_scratch')
   write(*,*)'IERR=',ierr
   call execute_command_line('ls -ld _scratch')
<br />   write(*,*)'TRY TO REMOVE _scratch when it should be gone/'
   ierr=system_rmdir('_scratch')
   call system_perror('*test of system_rmdir*')
   write(*,*)'IERR=',ierr
   call execute_command_line('ls -ld _scratch')
<br />   end program demo_system_rmdir
<br />
</pre>Expected output:
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
