syscallbysysc.d(1m)               USER COMMANDS              syscallbysysc.d(1m)



NAME
       syscallbysysc.d - syscalls by syscall. Uses DTrace.

SYNOPSIS
       syscallbysysc.d

DESCRIPTION
       syscallbysysc.d is a DTrace OneLiner to a report of the number of each
       type of system call made.

       This is useful to identify which system call is the most common.

       Docs/oneliners.txt and Docs/Examples/oneliners_examples.txt in the
       DTraceToolkit contain this as a oneliner that can be cut-n-paste to run.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # syscallbysysc.d

FIELDS
       first field
              This is the system call type. Most have man pages in section 2.

       second field
              This is the count, the number of occurrances for this system call.

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       syscallbysysc.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       procsystime(1M), dtrace(1M), truss(1)




