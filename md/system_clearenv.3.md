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
      <div class="c20"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_clearenv(3f)</b> - [M_system:ENVIRONMENT] clear environment by calling <b>clearenv</b>(3c) <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="7"></a>

      <h3><a name="7">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>system_clearenv</b>(<i>ierr</i>)
<br />    integer,intent(out),optional :: ierr
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>clearenv</b>() procedure clears the environment of all name-value

        <table cellpadding="3">
          <tr valign="top">
            <td class="c21" width="6%" nowrap="nowrap">pairs.</td>

            <td valign="bottom">Typically used in security-conscious applications or ones where configuration control requires ensuring specific variables
            are set.</td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">RETURN VALUES</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c22" width="6%" nowrap="nowrap">ierr</td>

            <td valign="bottom">returns zero on success, and a nonzero value on failure. Optional. If not present and an error occurs the program
            stops.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        <p>Sample program:</p>
        <pre>
     program demo_system_clearenv
     use M_system, only : system_clearenv
     implicit none
     ! environment before clearing
     call execute_command_line('env|wc')
     ! environment after clearing (not necessarily blank!!)
     call system_clearenv()
     call execute_command_line('env')
     end program demo_system_clearenv
<br />
</pre>Typical output:
        <pre>
     89     153    7427
     PWD=/home/urbanjs/V600
     SHLVL=1
<br />
</pre>
      </blockquote>
    </div>
  </div>
</body>
</html>
