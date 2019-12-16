<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c64"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getpid(3f)</b> - [M_system:QUERY] get PID (process ID) of current process from Fortran by calling <b>getpid</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="5"></a>

      <h3><a name="5">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
integer function <b>system_getpid</b>()
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>system_getpid</b>() function returns the process ID of the calling process.
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        The value returned is the integer process ID. The <b>system_getpid</b>() function shall always be successful and no return value is reserved to
        indicate an error.
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        Get process PID from Fortran
        <pre>
   program demo_system_getpid
   use M_system, only : system_getpid
   implicit none
      write(*,*)'PID=',system_getpid()
   end program demo_system_getpid
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
