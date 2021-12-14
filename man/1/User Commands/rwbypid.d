rwbypid.d(1m)                     USER COMMANDS                    rwbypid.d(1m)



NAME
       rwbypid.d - read/write calls by PID. Uses DTrace.

SYNOPSIS
       rwbypid.d

DESCRIPTION
       This script tracks the number of reads and writes at the syscall level by
       processes, printing the totals in a report. This matches reads and writes
       whether they succeed or not.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # rwbypid.d

FIELDS
       PID    process ID

       CMD    process name

       DIR    direction, Read or Write

       COUNT  total calls

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       rwbypid.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       rwbbypid.d(1M), dtrace(1M)




