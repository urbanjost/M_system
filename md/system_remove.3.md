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
      <div class="c151"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_remove(3f)</b> - [M_system] call <b>remove</b>(3c) to remove file <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
function <b>system_remove</b>(<i>path</i>) <b>result</b>(<i>err</i>)
<br />   character(*),intent(in) :: path
   integer(c_int)          :: err
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        Fortran supports scratch files via the <b>OPEN</b>(3c) command; but does not otherwise allow for removing files. The <b>system_remove</b>(3f)
        command allows for removing files by name that the user has the authority to remove by calling the C <b>remove</b>(3c) function.
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_remove
   use M_system, only : system_remove
   character(len=*),parameter :: FILE='MyJunkFile.txt'
   integer :: ierr
   write(*,*)'BEFORE CREATED '//FILE
   call execute_command_line('ls -l '//FILE)
   write(*,*)
<br />   ! note intentionally causes error if file exists
   open(unit=10,file=FILE,status='NEW')
   write(*,*)'AFTER OPENED '//FILE
   call execute_command_line('ls -l '//FILE)
   write(*,*)
<br />   write(10,'(a)') 'This is a file I want to delete'
   close(unit=10)
   write(*,*)'AFTER CLOSED '
   call execute_command_line('ls -l '//FILE)
   write(*,*)
<br />   ierr=system_remove(FILE)
   write(*,*)'AFTER REMOVED',IERR
   call execute_command_line('ls -l '//FILE)
   write(*,*)
<br />   end program demo_system_remove
<br />
</pre>Expected Results:
        <pre>
   &gt;  BEFORE CREATED MyJunkFile.txt
   &gt; ls: cannot access 'MyJunkFile.txt': No such file or directory
   &gt;
   &gt;  AFTER OPENED MyJunkFile.txt
   &gt; -rw-r--r-- 1 JSU None 0 Nov 19 19:32 MyJunkFile.txt
   &gt;
   &gt;  AFTER CLOSED
   &gt; -rw-r--r-- 1 JSU None 32 Nov 19 19:32 MyJunkFile.txt
   &gt;
   &gt;  AFTER REMOVED           0
   &gt; ls: cannot access 'MyJunkFile.txt': No such file or directory
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
</html>
