pathopens.d(1m)                   USER COMMANDS                  pathopens.d(1m)



NAME
       pathopens.d - full pathnames opened ok count. Uses DTrace.

SYNOPSIS
       pathopens.d

DESCRIPTION
       This program prints a count of the number of times files have been
       successfully opened. This is somewhat special in that the full pathname
       is calculated, even if the file open referred to a relative pathname.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # pathopens.d

FIELDS
       PATHNAME
              full pathname

       COUNT  number of successful opens

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       pathopens.d will sample until Ctrl-C is hit.

SEE ALSO
       opensnoop(1M), dtrace(1M)



