filebyproc.d(1m)                  USER COMMANDS                 filebyproc.d(1m)



NAME
       filebyproc.d - snoop opens by process name. Uses DTrace.

SYNOPSIS
       filebyproc.d

DESCRIPTION
       filebyproc.d is a DTrace OneLiner to print file pathnames as they are
       opened, including the name of the process calling the open.  A line will
       be printed regardless of whether the open is actually successful or not.

       This is useful to learn which files applications are attempting to open,
       such as config files, database files, log files, etc.

       Docs/oneliners.txt and Docs/Examples/oneliners_examples.txt in the
       DTraceToolkit contain this as a oneliner that can be cut-n-paste to run.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This prints new process name and pathnames until Ctrl-C is hit.
              # filebyproc.d

FIELDS
       CPU    The CPU that recieved the event

       ID     A DTrace probe ID for the event

       FUNCTION:NAME
              The DTrace probe name for the event

       remaining fields
              The first is the name of the process, the second is the file
              pathname.

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       filebyproc.d will run forever until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       opensnoop(1M), dtrace(1M), truss(1)




