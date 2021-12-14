iofileb.d(1m)                     USER COMMANDS                    iofileb.d(1m)



NAME
       iofileb.d - I/O bytes by file and process. Uses DTrace.

SYNOPSIS
       iofileb.d

DESCRIPTION
       This prints a summary of requested disk activity by pathname, providing
       totals of the I/O events in bytes. It is a companion to the iofile.d
       script - which prints in terms of I/O wait time, not bytes.  I/O wait
       time is a better metric for understanding performance issues.  Both disk
       and NFS I/O are measured.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Sample until Ctrl-C is hit then print report,
              # iofileb.d

FIELDS
       PID    process ID

       CMD    process name

       KB     kilobytes of disk I/O

       FILE   file pathname

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       iofileb.d will sample until Ctrl-C is hit.

SEE ALSO
       iofile.d(1M), iosnoop(1M), dtrace(1M)



