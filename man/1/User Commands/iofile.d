iofile.d(1m)                      USER COMMANDS                     iofile.d(1m)



NAME
       iofile.d - I/O wait time by file and process. Uses DTrace.

SYNOPSIS
       iofile.d

DESCRIPTION
       This prints the total I/O wait times for each filename by process.  This
       can help determine why an application is performing poorly by identifying
       which file they are waiting on, and the total times.  Both disk and NFS
       I/O are measured.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Sample until Ctrl-C is hit then print report,
              # iofile.d

FIELDS
       PID    process ID

       CMD    process name

       TIME   total wait time for disk events, us

       FILE   file pathname

BASED ON
       /usr/demo/dtrace/iocpu.d

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       iofile.d will sample until Ctrl-C is hit.

SEE ALSO
       iosnoop(1M), dtrace(1M)




