sigdist.d(1m)                     USER COMMANDS                    sigdist.d(1m)



NAME
       sigdist.d - signal distribution by process. Uses DTrace.

SYNOPSIS
       sigdist.d

DESCRIPTION
       This is a simple DTrace script that prints the number of signals recieved
       by process and signal number. This script is also available as
       /usr/demo/dtrace/sig.d, where it originates.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # sigdist.d

FIELDS
       SENDER process name of sender

       RECIPIENT
              process name of target

       SIG    signal number, see signal(3head)

       COUNT  number of signals sent

BASED ON
       /usr/demo/dtrace/sig.d

DOCUMENTATION
       DTrace Guide "proc Provider" chapter (docs.sun.com)

       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       sigdist.d will sample until Ctrl-C is hit.

SEE ALSO
       kill.d(1M), dtrace(1M)




