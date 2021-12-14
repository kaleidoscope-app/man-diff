bitesize.d(1m)                    USER COMMANDS                   bitesize.d(1m)



NAME
       bitesize.d - analyse disk I/O size by process. Uses DTrace.

SYNOPSIS
       bitesize.d

DESCRIPTION
       This produces a report for the size of disk events caused by processes.
       These are the disk events sent by the block I/O driver.

       If applications must use the disks, we generally prefer they do so
       sequentially with large I/O sizes, or larger "bites".

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Sample until Ctrl-C is hit then print report,
              # bitesize.d

FIELDS
       PID    process ID

       CMD    command and argument list

       value  size in bytes

       count  number of I/O operations

NOTES
       The application may be requesting smaller sized operations, which are
       being rounded up to the nearest sector size or UFS block size.

       To analyse what the application is requesting, DTraceToolkit programs
       such as Proc/fddist may help.

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       bitesize.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       iosnoop(1M), seeksize(1M), dtrace(1M)




