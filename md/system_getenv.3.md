<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c45"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getenv(3f)</b> - [M_system:ENVIRONMENT] get environment variable from Fortran by calling <b>get_environment_variable</b>(3f)
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_getenv</b>(<i>name</i>)
<br />    character(len=:),allocatable   :: system_getenv
    character(len=*),intent(in)    :: name
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_getenv</b>() function gets the value of an environment variable.
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c46" width="6%" nowrap="nowrap">name</td>

            <td valign="bottom">Return the value of the specified environment variable or blank if the variable is not defined.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample setting an environment variable from Fortran:
        <pre>
   program demo_system_getenv
   use M_system, only : system_getenv
   implicit none
   integer :: ierr
<br />      write(*,'("USER     : ",a)')system_getenv('USER')
      write(*,'("LOGNAME  : ",a)')system_getenv('LOGNAME')
      write(*,'("USERNAME : ",a)')system_getenv('USERNAME')
<br />
   end program demo_system_getenv
</pre>

      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
