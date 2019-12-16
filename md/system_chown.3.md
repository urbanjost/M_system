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
      <div class="c16"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_chown(3f)</b> - [M_system] change file owner and group <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="6"></a>

      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
logical function <b>system_chown</b>(path,owner,group)
<br />   character(len=*),intent(in) :: path
   integer,intent(in)          :: owner
   integer,intent(in)          :: group
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        The <b>chown</b>(3f) function changes owner and group of a file

        <p>The path argument points to a pathname naming a file. The user ID and group ID of the named file shall be set to the numeric values contained in
        owner and group, respectively.</p>

        <p>Only processes with an effective user ID equal to the user ID of the file or with appropriate privileges may change the ownership of a file.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c17" width="6%" nowrap="nowrap">path</td>

            <td valign="bottom">a character string representing a file pathname. Trailing spaces are ignored.</td>
          </tr>

          <tr valign="top">
            <td class="c17" width="6%" nowrap="nowrap">owner</td>

            <td valign="bottom">UID of owner that ownership is to be changed to</td>
          </tr>

          <tr valign="top">
            <td class="c17" width="6%" nowrap="nowrap">group</td>

            <td valign="bottom">GID of group that ownership is to be changed to</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURN VALUE</a></h3>

      <blockquote>
        The <b>system_chown</b>() function should return zero (0) if successful. Otherwise, these functions shall return 1 and set errno to indicate the
        error. If 1 is returned, no changes are made in the user ID and group ID of the file.
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        <p>Sample program:</p>
        <pre>
   program demo_system_chown
   Use M_system, only : system_chown
   Use M_system, only : system_getuid
   Use M_system, only : system_getgid
   use M_system, only : system_perror
   implicit none
   integer                     :: i
   character(len=80),parameter :: names(*)=[character(len=80) :: 'myfile1','/usr/local']
   do i=1,size(names)
      if(.not.  system_chown(&amp;
      &amp; trim(names(i)),  &amp;
      &amp; system_getuid(), &amp;
      &amp; system_getgid()) &amp;
         )then
         call system_perror('*demo_system_chown* '//trim(names(i)))
      endif
   enddo
   end program demo_system_chown
<br />
</pre>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
