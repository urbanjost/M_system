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
      <div class="c24"></div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>system_clock(3f)</b> - [FORTRAN:INTRINSIC:SYSTEM ENVIRONMENT] Return numeric data from a real-time clock. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a> <a name="8"></a>

      <h3><a name="8">SYNTAX</a></h3>

      <blockquote>
        <p>subroutine <b>system_clock</b>([count, count_rate, count_max])</p>
        <pre>
   integer,intent(out),optional  :: count
   integer,intent(out),optional  :: count_rate
      or
   real,intent(out),optional     :: count_rate
   integer,intent(out,optional   :: count_max
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p>system_clock lets you measure durations of time with the precision of the smallest time increment generally available on a system by returning
        processor-dependent values based on the current value of the processor clock. The CLOCK value is incremented by one for each clock count until the
        value count_max is reached and is then reset to zero at the next count. CLOCK therefore is a modulo value that lies in the range 0 to count_max.
        count_rate and count_max are assumed constant (even though CPU rates can vary on a single platform).</p>

        <p>count_rate is system dependent and can vary depending on the kind of the arguments.</p>

        <p>If there is no clock, or querying the clock fails, COUNT is set to <b>-huge</b>(count), and count_rate and count_max are set to zero.</p>

        <p>system_clock is typically used to measure short time intervals (system clocks may be 24-hour clocks or measure processor clock ticks since boot,
        for example). It is most often used for measuring or tracking the time spent in code blocks in lieu of using profiling tools.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">ARGUMENTS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c25" width="6%" nowrap="nowrap">COUNT</td>

            <td valign="bottom">(optional) shall be an integer scalar. It is assigned a processor-dependent value based on the current value of the
            processor clock, or <b>-HUGE</b> (COUNT) if there is no clock. The processor-dependent value is incremented by one for each clock count until
            the value COUNT_MAX is reached and is reset to zero at the next count. It lies in the range 0 to COUNT_MAX if there is a clock.</td>
          </tr>

          <tr valign="top">
            <td class="c25" colspan="2">COUNT_RATE</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>(optional) shall be an integer or real scalar. It is assigned a processor-dependent approximation to the number of processor clock counts
            per second, or zero if there is no clock.</td>
          </tr>

          <tr valign="top">
            <td class="c25" colspan="2">COUNT_MAX</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>(optional) shall be an integer scalar. It is assigned the maximum value that COUNT can have, or zero if there is no clock.</td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">EXAMPLE</a></h3>

      <blockquote>
        <p>Sample program:</p>
        <pre>
      program demo_system_clock
        integer :: count, count_rate, count_max
        call system_clock(count, count_rate, count_max)
        write(*,*) count, count_rate, count_max
      end program demo_system_clock
<br /><br />
</pre>If the processor clock is a 24-hour clock that registers time at approximately 18.20648193 ticks per second, at 11:30 A.M. the reference
        <pre>
      CALL SYSTEM_CLOCK (COUNT = C, COUNT_RATE = R, COUNT_MAX = M)
<br />
</pre>defines
        <pre>
      C = (11*3600+30*60)*18.20648193 = 753748,
      R = 18.20648193, and
      M = 24*3600*18.20648193-1 = 1573039.
<br />
</pre>
      </blockquote><a name="5"></a>

      <h3><a name="5">STANDARD</a></h3>

      <blockquote>
        <p>[[Fortran 95]] and later</p>
      </blockquote><a name="6"></a>

      <h3><a name="6">CLASS</a></h3>

      <blockquote>
        <p>Subroutine</p>
      </blockquote><a name="7"></a>

      <h3><a name="7">SEE ALSO</a></h3>

      <blockquote>
        <p>[[date_and_time]], [[cpu_time]]</p>
      </blockquote>
      <hr />
    </div>
  </div>
</body>
</html>
