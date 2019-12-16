<?
<body>
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
      <div class="c137"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_putenv(3f)</b> - [M_system:ENVIRONMENT] set environment variable from Fortran by calling <b>putenv</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_putenv</b>(<i>string</i>, <i>err</i>)
<br />    character(len=*),intent(in)    :: string
    integer, optional, intent(out) :: err
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_putenv</b>() function adds or changes the value of environment variables.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c138" width="6%" nowrap="nowrap">string</td>

            <td valign="bottom"><i>string</i> of format "NAME=value". If name does not already exist in the environment, then <i>string</i> is added to the
            environment. If name does exist, then the value of name in the environment is changed to value. The <i>string</i> passed to <b>putenv</b>(3c)
            becomes part of the environment, so this routine creates a <i>string</i> each time it is called that increases the amount of memory the program
            uses.</td>
          </tr>

          <tr valign="top">
            <td class="c138" width="6%" nowrap="nowrap">err</td>

            <td valign="bottom">The <b>system_putenv</b>() function returns zero on success, or nonzero if an error occurs. A non-zero error usually
            indicates sufficient memory does not exist to store the variable.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample setting an environment variable from Fortran:
        <pre>
    program demo_system_putenv
    use M_system, only : system_putenv
    use iso_c_binding
    implicit none
    integer :: ierr
       !
       write(*,'(a)')'no environment variables containing "GRU":'
       call execute_command_line('env|grep GRU')
       !
       call system_putenv('GRU=this is the value',ierr)
       write(*,'(a,i0)')'now "GRU" should be defined: ',ierr
       call execute_command_line('env|grep GRU')
       !
       call system_putenv('GRU2=this is the second value',ierr)
       write(*,'(a,i0)')'now "GRU" and "GRU2" should be defined: ',ierr
       call execute_command_line('env|grep GRU')
       !
       call system_putenv('GRU2',ierr)
       call system_putenv('GRU',ierr)
       write(*,'(a,i0)')'should be gone, varies with different putenv(3c): ',ierr
       call execute_command_line('env|grep GRU')
       write(*,'(a)')'system_unsetenv(3f) is a better way to remove variables'
       !
    end program demo_system_putenv
<br />
</pre>Results:
        <pre>
   no environment variables containing "GRU":
   now "GRU" should be defined: 0
   GRU=this is the value
   now "GRU" and "GRU2" should be defined: 0
   GRU2=this is the second value
   GRU=this is the value
   should be gone, varies with different putenv(3c): 0
   system_unsetenv(3f) is a better way to remove variables
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
</html>
