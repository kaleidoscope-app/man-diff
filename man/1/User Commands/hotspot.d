hotspot.d(1m)                     USER COMMANDS                    hotspot.d(1m)



NAME
       hotspot.d - print disk event by location. Uses DTrace.

SYNOPSIS
       hotspot.d

DESCRIPTION
       hotspot.d is a simple DTrace script to determine if disk activity is
       occuring in the one place - a "hotspot". This helps us understand the
       system's usage of a disk, it does not imply that the existance or not of
       a hotspot is good or bad (often may be good, less seeking).

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Sample until Ctrl-C is hit then print report,
              # hotspot.d

FIELDS
       Disk   disk instance name

       Major  driver major number

       Minor  driver minor number

       value  location of disk event, megabytes

       count  number of events

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       hotspot.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       dtrace(1M)



