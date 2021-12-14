loads.d(1m)                       USER COMMANDS                      loads.d(1m)



NAME
       loads.d - print load averages. Uses DTrace.

SYNOPSIS
       loads.d

DESCRIPTION
       These are the same load averages that the "uptime" command prints.  The
       purpose of this script is to demonstrate fetching these values from the
       DTrace language.

       The first field is the 1 minute average, the second is the 5 minute, and
       the third is the 15 minute average. The value represents the average
       number of runnable threads in the system, a value higher than your CPU
       (core/hwthread) count may be a sign of CPU saturation.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Print load averages,
              # loads.d

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       uptime(1), dtrace(1M)




