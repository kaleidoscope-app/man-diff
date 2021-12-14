syscallbyproc.d(1m)               USER COMMANDS              syscallbyproc.d(1m)



NAME
       syscallbyproc.d - syscalls by process name. Uses DTrace.

SYNOPSIS
       syscallbyproc.d

DESCRIPTION
       syscallbyproc.d is a DTrace OneLiner to a report of the number of system
       calls made by process name.

       This is useful to identify which process is causing the most system
       calls.

       Docs/oneliners.txt and Docs/Examples/oneliners_examples.txt in the
       DTraceToolkit contain this as a oneliner that can be cut-n-paste to run.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # syscallbyproc.d

FIELDS
       first field
              This is the process name. There may be several PIDs that have the
              same process name, for example with numerous instances of "bash".
              The value reported will be the sum of them all.

       second field
              This is the count, the number of system calls made.

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       syscallbyproc.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       procsystime(1M), dtrace(1M), truss(1)




