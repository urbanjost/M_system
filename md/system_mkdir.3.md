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
      <div class="c120"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_mkdir(3f)</b> - [M_system] call <b>mkdir</b>(3c) to create a new directory <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="6">SYNOPSIS</a></h3><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>Predefined variables are typically used to set permission modes. You can bytewise-OR together these variables to to create the most common
        permissions mode:</p>
        <pre>
    User:    R_USR  (read),  W_USR  (write),  X_USR(execute)
    Group:   R_GRP  (read),  W_GRP  (write),  X_GRP(execute)
    Others:  R_OTH  (read),  W_OTH  (write),  X_OTH(execute)
<br />
</pre>Additionally, some shortcuts are provided (basically a bitwise-OR combination of the above):
        <pre>
     Read + Write + Execute: RWX_U (User), RWX_G (Group), RWX_O (Others)
     DEFFILEMODE: Equivalent of 0666 =rw-rw-rw-
     ACCESSPERMS: Equivalent of 0777 = rwxrwxrwx
<br />
</pre>Therefore, to give only the user rwx (read+write+execute) rights whereas group members and others may not do anything, you can use any of the
following <b>mkdir</b>() calls equivalently:
        <pre>
     ierr= mkdir("mydir", IANY([R_USR, W_USR, X_USR]));
     ierr= mkdir("mydir", RWX_U);
<br />
</pre>In order to give anyone any rights (mode 0777 = rwxrwxrwx), you can use any of the following calls equivalently:
        <pre>
     ierr= mkdir("mydir",IANY([R_USR,W_USR,X_USR,R_GRP,W_GRP,X_GRP,R_OTH,W_OTH,X_OTH]));
     ierr= mkdir("mydir",IANY([RWX_U,RWX_G,RWX_O]));
     ierr= mkdir("mydir",ACCESSPERMS);
<br />
</pre>
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_mkdir
   use M_system, only : system_perror
   use M_system, only : system_mkdir
   use M_system, only : R_GRP,R_OTH,R_USR,RWX_G,RWX_O
   use M_system, only : RWX_U,W_GRP,W_OTH,W_USR,X_GRP,X_OTH,X_USR
   use M_system, only : DEFFILEMODE, ACCESSPERMS
   implicit none
   integer :: ierr
   ierr=system_mkdir('_scratch',IANY([R_USR,W_USR,X_USR]))
   end program demo_system_mkdir
<br />
</pre>
      </blockquote><a name="4"></a>
    </div>
  </div>
</body>
</html>
