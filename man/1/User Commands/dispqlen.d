dispqlen.d(1m)                    USER COMMANDS                   dispqlen.d(1m)



NAME
       dispqlen.d - dispatcher queue length by CPU. Uses DTrace.

SYNOPSIS
       dispqlen.d

DESCRIPTION
       The dispatcher queue length is an indication of CPU saturation.  It is
       not an indicatior of utilisation - the CPUs may or may not be utilised
       when the dispatcher queue reports a length of zero.

       This script measures this activity by sampling at 1000 Hertz per CPU.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Print dispatcher queue length by CPU.
              # dispqlen.d

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       dispqlen.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       uptime(1), dtrace(1M)




