pidpersec.d(1m)                   USER COMMANDS                  pidpersec.d(1m)



NAME
       pidpersec.d - print new PIDs per sec. Uses DTrace.

SYNOPSIS
       pidpersec.d

DESCRIPTION
       This script prints the number of new processes created per second.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Print PID statistics per second,
              # pidpersec.d

FIELDS
       TIME   time, as a string

       LASTPID
              last PID created

       PID/s  Number of processes created per second

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       pidpersec.d will run until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       execsnoop(1M), dtrace(1M)



