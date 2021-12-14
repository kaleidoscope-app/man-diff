pridist.d(1m)                     USER COMMANDS                    pridist.d(1m)



NAME
       pridist.d - process priority distribution. Uses DTrace.

SYNOPSIS
       pridist.d

DESCRIPTION
       This is a simple DTrace script that samples at 1000 Hz which process is
       on the CPUs, and what the priority is. A distribution plot is printed.

       With priorities, the higher the priority the better chance the process
       (actually, thread) has of being scheduled.

       This idea came from the script /usr/demo/dtrace/profpri.d, which produces
       similar output for one particular PID.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # pridist.d

FIELDS
       CMD    process name

       PID    process ID

       value  process priority

       count  number of samples of at least this priority

BASED ON
       /usr/demo/dtrace/profpri.d

DOCUMENTATION
       DTrace Guide "profile Provider" chapter (docs.sun.com)

       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       pridist.d will sample until Ctrl-C is hit.

SEE ALSO
       dispadmin(1M), dtrace(1M)




