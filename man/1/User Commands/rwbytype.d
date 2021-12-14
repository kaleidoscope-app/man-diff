rwbytype.d(1m)                    USER COMMANDS                   rwbytype.d(1m)



NAME
       rwbytype.d - read/write bytes by vnode type. Uses DTrace.

SYNOPSIS
       rwbytype.d

DESCRIPTION
       This program identifies the vnode type of read/write activity - whether
       that is for regular files, sockets, character special devices, etc. This
       is measuring at the application level, so file activity may well be
       cached by the system.

       Since this uses DTrace, only users with root privileges can run this
       command.

EXAMPLES
       This samples until Ctrl-C is hit.
              # rwbytype.d

FIELDS
       PID    process ID

       CMD    process name

       VNODE  vnode type (describes I/O type)

       DIR    direction, Read or Write

       BYTES  total bytes

DOCUMENTATION
       See the DTraceToolkit for further documentation under the Docs directory.
       The DTraceToolkit docs may include full worked examples with verbose
       descriptions explaining the output.

EXIT
       rwbytype.d will sample until Ctrl-C is hit.

AUTHOR
       Brendan Gregg [Sydney, Australia]

SEE ALSO
       rwbypid.d(1M), rwbbypid.d(1M), dtrace(1M)




