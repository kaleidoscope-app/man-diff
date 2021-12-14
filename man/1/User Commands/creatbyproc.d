creatbyproc.d(1m)                 USER COMMANDS                creatbyproc.d(1m)



NAME
       creatbyproc.d - snoop creat()s by process name. Uses DTrace.

SYNOPSIS
       creatbyproc.d

DESCRIPTION
       creatbyproc.d is a DTrace OneLiner to print file creations as it occurs,
       including the name of the process calling the open.

       This matches file creates from the creat() system call; not all file
       creation occurs in this way, sometimes it is through open() with a
       O_CREAT flag, this script will not monitor that activity.

       Docs/oneliners.txt and Docs/Examples/oneliners_examples.txt in the
       DTraceToolkit contain this as a oneliner that can be cut-n-paste to run.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This prints process names and new pathnames until Ctrl-C is hit.
              # creatbyproc.d

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
       creatbyproc.d will run forever until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       dtrace(1M)




