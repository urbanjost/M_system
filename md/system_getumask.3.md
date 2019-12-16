<?
<body>
  <div id="Container">
    <div id="Content">
      <div class="c79"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_getumask(3f)</b> - [M_system] get current umask <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="4"></a>

      <h3><a name="4">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
integer function <b>system_getumask</b>() result (<i>umask_value</i>)
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The return value from <b>getumask</b>(3f) is the value of the file creation mask, obtained by using <b>umask</b>(3c).
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program
        <pre>
   program demo_getumask
   use M_system, only : system_getumask, system_setumask
   integer :: i
   write(*,101)(system_getumask(),i=1,4)
   101 format(1x,i0,1x,"O'",o4.4,"'",1x,'Z"',z0,"'",1x,"B'",b12.12,"'")
   end program demo_getumask
<br />
</pre>Expected output
        <pre>
    18 O'022' Z"12' B'000010010"
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
