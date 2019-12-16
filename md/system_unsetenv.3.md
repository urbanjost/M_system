<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c189"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_unsetenv(3f)</b> - [M_system:ENVIRONMENT] delete an environment variable by calling <b>unsetenv</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_unsetenv</b>(name,ierr)
<br />   character(len=*),intent(in)  :: name
   integer,intent(out),optional :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>system_unsetenv</b>(3f) function deletes the variable name from the environment.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c190" width="6%" nowrap="nowrap">name</td>

            <td valign="bottom">name of variable to delete. If name does not exist in the environment, then the function succeeds, and the environment is
            unchanged.</td>
          </tr>

          <tr valign="top">
            <td class="c190" width="6%" nowrap="nowrap">ierr</td>

            <td valign="bottom">The <b>system_unsetenv</b>(3f) function returns zero on success, or <b>-1</b> on error. name is NULL, points to a string of
            length 0, or contains an '=' character. Insufficient memory to add a new variable to the environment.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
     program demo_system_unsetenv
     use M_system, only : system_unsetenv, system_putenv
     implicit none
     call system_putenv('GRU=this is the value')
     write(*,'(a)')'The variable GRU should be set'
     call execute_command_line('env|grep GRU')
     call system_unsetenv('GRU')
     write(*,'(a)')'The variable GRU should not be set'
     call execute_command_line('env|grep GRU')
     end program demo_system_unsetenv
<br />
</pre>
      </blockquote><a name="5"></a>
    </div>
  </div>
</body>
