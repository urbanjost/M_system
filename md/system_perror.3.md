<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c134"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>perror(3f)</b> - [M_system] print error message for last C error on stderr <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="4">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_perror</b>(<i>prefix</i>)
<br />      character(len=*),intent(in) :: prefix
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Use <b>system_perror</b>(3f) to print an error message on stderr corresponding to the current value of the C global variable errno. Unless you use
        NULL as the argument <i>prefix</i>, the error message will begin with the <i>prefix</i> string, followed by a colon and a space (:). The remainder
        of the error message produced is one of the strings described for <b>strerror</b>(3c).
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_perror
   use M_system, only : system_perror,system_rmdir
   implicit none
   character(len=:),allocatable :: DIRNAME
   DIRNAME='/NOT/THERE/OR/ANYWHERE'
   ! generate an error with a routine that supports errno and perror(3c)
   if(system_rmdir(DIRNAME).ne.0)then
      call system_perror('*demo_system_perror*:'//DIRNAME)
   endif
   write(*,'(a)')"That's all Folks!"
   end program demo_system_perror
<br />
</pre>Expected results:
        <pre>
   *demo_system_perror*:/NOT/THERE/OR/ANYWHERE: No such file or directory
   That's all Folks!
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
