<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c42"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getegid(3f)</b> - [M_system:QUERY] get the effective group ID (GID) of current process from Fortran by calling <b>getegid</b>(3c)
        <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_getegid</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>getegid</b>() function returns the effective group ID of the calling process.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        The <b>getegid</b>() should always be successful and no return value is reserved to indicate an error.
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        No errors are defined.
      </blockquote><a name="5"></a>

      <h3><a name="5">SEE ALSO</a></h3>

      <blockquote>
        <b>getegid</b>(), <b>system_geteuid</b>(), <b>getuid</b>(), <b>setegid</b>(), <b>seteuid</b>(), <b>setgid</b>(), <b>setregid</b>(),
        <b>setreuid</b>(), <b>setuid</b>()
      </blockquote><a name="6"></a>

      <h3><a name="6">EXAMPLE</a></h3>

      <blockquote>
        Get group ID from Fortran
        <pre>
   program demo_system_getegid
   use M_system, only : system_getegid
   implicit none
      write(*,*)'GID=',system_getegid()
   end program demo_system_getegid
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
