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
      <div class="c32"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_cpu_time(3f)</b> - [M_system] get processor time by calling <b>times</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="6"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_cpu_time</b>(<i>c_user</i>, <i>c_system</i>, <i>c_total</i>)
<br />        real,intent(out) :: c_total
        real,intent(out) :: c_user
        real,intent(out) :: c_system
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3><a name="3"></a>

      <h3><a name="3">OUTPUT</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c33" colspan="2">c_total</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>total processor time ( <i>c_user</i> + <i>c_system</i> )</td>
          </tr>

          <tr valign="top">
            <td class="c33" width="6%" nowrap="nowrap">c_user</td>

            <td valign="bottom">processor user time</td>
          </tr>

          <tr valign="top">
            <td class="c33" colspan="2">c_system</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>processor system time</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        No errors are defined.
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLES</a></h3>

      <blockquote>
        <p>Sample program:</p>
        <pre>
   program demo_system_cpu_time
<br />   use M_system, only : system_cpu_time
   use ISO_C_BINDING, only : c_float
   implicit none
   real    :: user_start, system_start, total_start
   real    :: user_finish, system_finish, total_finish
   integer :: i
   integer :: itimes=1000000
   real    :: value
<br />      call system_cpu_time(total_start,user_start,system_start)
<br />      value=0.0
      do i=1,itimes
         value=sqrt(real(i)+value)
      enddo
      write(10,*)value
      flush(10)
      write(*,*)'average sqrt value=',value/itimes
      call system_cpu_time(total_finish,user_finish,system_finish)
      write(*,*)'USER ......',user_finish-user_start
      write(*,*)'SYSTEM ....',system_finish-system_start
      write(*,*)'TOTAL .....',total_finish-total_start
<br />
</pre>

        <blockquote>
          end program demo_system_cpu_time
        </blockquote>

        <p>Typical Results:</p>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
