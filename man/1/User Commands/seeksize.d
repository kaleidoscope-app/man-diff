seeksize.d(1m)                    USER COMMANDS                   seeksize.d(1m)



NAME
       seeksize.d - print disk event seek report. Uses DTrace.

SYNOPSIS
       seeksize.d

DESCRIPTION
       seeksize.d is a simple DTrace program to print a report of disk event
       seeks by process.

       This can be used to identify whether processes are accessing the disks in
       a "random" or "sequential" manner. Sequential is often desirable,
       indicated by mostly zero length seeks.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Sample until Ctrl-C is hit then print report,
              # seeksize.d

FIELDS
       PID    process ID

       CMD    command and argument list

       value  distance in disk blocks (sectors)

       count  number of I/O operations

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       seeksize.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       iosnoop(1M), bitesize.d(1M), dtrace(1M)




