newproc.d(1m)                     USER COMMANDS                    newproc.d(1m)



NAME
       newproc.d - snoop new processes. Uses DTrace.

SYNOPSIS
       newproc.d

DESCRIPTION
       newproc.d is a DTrace OneLiner to snoop new processes as they are run.
       The argument listing is printed.

       This is useful to identify short lived processes that are usually
       difficult to spot using traditional tools.

       Docs/oneliners.txt and Docs/Examples/oneliners_examples.txt in the
       DTraceToolkit contain this as a oneliner that can be cut-n-paste to run.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This prints new processes until Ctrl-C is hit.
              # newproc.d

FIELDS
       CPU    The CPU that recieved the event

       ID     A DTrace probe ID for the event

       FUNCTION:NAME
              The DTrace probe name for the event

       remaining fields
              These contains the argument listing for the new process

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       newproc.d will run forever until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       execsnoop(1M), dtrace(1M), truss(1)




