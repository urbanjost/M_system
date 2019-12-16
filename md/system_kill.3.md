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
      <div class="c113"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_kill(3f)</b> - [M_system] send a signal to a process or a group of processes <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<b>integer</b>(kind=c_int) function <b>system_kill</b>(pid,sig)
<br />      integer,intent(in) :: pid
      integer,intent(in) :: sig
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>The <b>kill</b>() function shall send a signal to a process or a group of processes specified by pid. The signal to be sent is specified by sig
        and is either one from the list given in &lt;signal.h&gt; or 0. If sig is 0 (the null signal), error checking is performed but no signal is actually
        sent. The null signal can be used to check the validity of pid.</p>

        <p>For a process to have permission to send a signal to a process designated by pid, unless the sending process has appropriate privileges, the real
        or effective user ID of the sending process shall match the real or saved set-user-ID of the receiving process.</p>

        <p>If pid is greater than 0, sig shall be sent to the process whose process ID is equal to pid.</p>

        <p>If pid is 0, sig shall be sent to all processes (excluding an unspecified set of system processes) whose process group ID is equal to the process
        group ID of the sender, and for which the process has permission to send a signal.</p>

        <p>If pid is <b>-1</b>, sig shall be sent to all processes (excluding an unspecified set of system processes) for which the process has permission
        to send that signal.</p>

        <p>If pid is negative, but not <b>-1</b>, sig shall be sent to all processes (excluding an unspecified set of system processes) whose process group
        ID is equal to the absolute value of pid, and for which the process has permission to send a signal.</p>

        <p>If the value of pid causes sig to be generated for the sending process, and if sig is not blocked for the calling thread and if no other thread
        has sig unblocked or is waiting in a <b>sigwait</b>() function for sig, either sig or at least one pending unblocked signal shall be delivered to
        the sending thread before <b>kill</b>() returns.</p>

        <p>The user ID tests described above shall not be applied when sending SIGCONT to a process that is a member of the same session as the sending
        process.</p>

        <p>An implementation that provides extended security controls may impose further implementation-defined restrictions on the sending of signals,
        including the null signal. In particular, the system may deny the existence of some or all of the processes specified by pid.</p>

        <p>The <b>kill</b>() function is successful if the process has permission to send sig to any of the processes specified by pid. If <b>kill</b>()
        fails, no signal shall be sent.</p>
      </blockquote>

      <p><a name="3"></a></p>

      <h3><a name="3">RETURN VALUE</a></h3>

      <blockquote>
        <p>Upon successful completion, 0 shall be returned. Otherwise, <b>-1</b> shall be returned and errno set to indicate the error.</p>
      </blockquote><a name="4"></a>

      <h3><a name="4">ERRORS</a></h3>

      <blockquote>
        The <b>kill</b>() function shall fail if:

        <table cellpadding="3">
          <tr valign="top">
            <td class="c114" width="6%" nowrap="nowrap">EINVAL</td>

            <td valign="bottom">The value of the sig argument is an invalid or unsupported signal number.</td>
          </tr>

          <tr valign="top">
            <td class="c114" width="6%" nowrap="nowrap">EPERM</td>

            <td valign="bottom">The process does not have permission to send the signal to any receiving process.</td>
          </tr>

          <tr valign="top">
            <td class="c114" width="6%" nowrap="nowrap">ESRCH</td>

            <td valign="bottom">No process or process group can be found corresponding to that specified by pid. The following sections are
            informative.</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        Sample program:
        <pre>
   program demo_system_kill
   use M_system, only : system_kill
   use M_system, only : system_perror
   implicit none
   integer           :: i,pid,ios,ierr,signal=9
   character(len=80) :: argument
<br />      do i=1,command_argument_count()
         ! get arguments from command line
         call get_command_argument(i, argument)
         ! convert arguments to integers assuming they are PID numbers
         read(argument,'(i80)',iostat=ios) pid
         if(ios.ne.0)then
            write(*,*)'bad PID=',trim(argument)
         else
            write(*,*)'kill SIGNAL=',signal,' PID=',pid
         ! send signal SIGNAL to pid PID
            ierr=system_kill(pid,signal)
         ! write message if an error was detected
            if(ierr.ne.0)then
               call system_perror('*demo_system_kill*')
            endif
         endif
      enddo
</pre>end program demo_system_kill
      </blockquote><a name="6"></a>

      <h3><a name="6">SEE ALSO</a></h3>

      <blockquote>
        <b>getpid</b>(), <b>raise</b>(), <b>setsid</b>(), <b>sigaction</b>(), <b>sigqueue</b>(),
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
