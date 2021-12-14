kill.d(1m)                        USER COMMANDS                       kill.d(1m)



NAME
       kill.d - snoop process signals as they occur. Uses DTrace.

SYNOPSIS
       kill.d

DESCRIPTION
       kill.d is a simple DTrace program to print details of process signals as
       they are sent, such as the PID source and destination, signal number and
       result.

       This program can be used to determine which process is sending signals to
       which other process.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Default output, print process signals as they are sent.
              # kill.d

FIELDS
       FROM   source PID

       COMMAND
              source command name

       TO     destination PID

       SIG    destination signal ("9" for a kill -9)

       RESULT result of signal (-1 is for failure)

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       kill.d will run forever until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       dtrace(1M), truss(1)




