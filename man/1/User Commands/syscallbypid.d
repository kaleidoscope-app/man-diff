syscallbypid.d(1m)                USER COMMANDS               syscallbypid.d(1m)



NAME
       syscallbypid.d - syscalls by process ID. Uses DTrace.

SYNOPSIS
       syscallbypid.d

DESCRIPTION
       This reports the number of each type of system call made by PID.  This is
       useful to identify which process is causing the most system calls.

       This is based on a script from DExplorer.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # syscallbypid.d

FIELDS
       PID    process ID

       CMD    process name

       SYSCALL
              system call name

       COUNT  number of system calls made in this sample

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       syscallbypid.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       procsystime(1M), dtrace(1M), truss(1)




