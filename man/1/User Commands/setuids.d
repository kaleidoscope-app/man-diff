setuids.d(1m)                     USER COMMANDS                    setuids.d(1m)



NAME
       setuids.d - snoop setuid calls as they occur. Uses DTrace.

SYNOPSIS
       setuids.d

DESCRIPTION
       setuids.d is a simple DTrace program to print details of setuid calls,
       where a process assumes a different UID. These are usually related to
       login events.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       Default output, print setuids as they occur,
              # setuids.d

FIELDS
       UID    user ID (from)

       SUID   set user ID (to)

       PPID   parent process ID

       PID    process ID

       PCMD   parent command

       CMD    command (with arguments)

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       setuids.d will run forever until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       dtrace(1M), bsmconv(1M)




