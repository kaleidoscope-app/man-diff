cpuwalk.d(1m)                     USER COMMANDS                    cpuwalk.d(1m)



NAME
       cpuwalk.d - Measure which CPUs a process runs on. Uses DTrace.

SYNOPSIS
       cpuwalk.d [duration]

DESCRIPTION
       This program is for multi-CPU servers, and can help identify if a process
       is running on multiple CPUs concurrently or not.

       A duration may be specified in seconds.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       this runs until Ctrl-C is hit,
              # cpuwalk.d

       run for 5 seconds,
              # cpuwalk.d 5

FIELDS
       PID    process ID

       CMD    process name

       value  CPU id

       count  number of samples (sample at 100 hz)

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       cpuwalk.d will run until Ctrl-C is hit, or the duration specified is
       reached.

SEE ALSO
       threaded.d(1M), dtrace(1M)




