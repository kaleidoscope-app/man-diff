priclass.d(1m)                    USER COMMANDS                   priclass.d(1m)



NAME
       priclass.d - priority distribution by scheduling class. Uses DTrace.

SYNOPSIS
       priclass.d

DESCRIPTION
       This is a simple DTrace script that samples at 1000 Hz the current
       thread's scheduling class and priority. A distribution plot is printed.

       With priorities, the higher the priority the better chance the thread has
       of being scheduled.

       This idea came from the script /usr/demo/dtrace/pri.d, which produces
       similar output for priority changes, not samples.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # priclass.d

FIELDS
       value  process priority

       count  number of samples of at least this priority

SCHEDULING CLASSES
       TS     time sharing

       IA     interactive

       RT     real time

       SYS    system

       FSS    fair share scheduler

BASED ON
       /usr/demo/dtrace/pri.d

DOCUMENTATION
       DTrace Guide "profile Provider" chapter (docs.sun.com)

       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       priclass.d will sample until Ctrl-C is hit.

SEE ALSO
       pridist.d(1M), dispadmin(1M), dtrace(1M)




