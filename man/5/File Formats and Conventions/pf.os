PF.OS(5)                       File Formats Manual                      PF.OS(5)

NAME
     pf.os – format of the operating system fingerprints file

DESCRIPTION
     The packet filter firewall and the tcpdump(1) program can both fingerprint
     the operating system of hosts that originate an IPv4 TCP connection.  The
     file consists of newline-separated records, one per fingerprint, containing
     nine colon (‘:’) separated fields.  These fields are as follows:

           window       The TCP window size.
           TTL          The IP time to live.
           df           The presence of the IPv4 don't fragment bit.
           packet size  The size of the initial TCP packet.
           TCP options  An ordered list of the TCP options.
           class        The class of operating system.
           version      The version of the operating system.
           subtype      The subtype of patchlevel of the operating system.
           description  The overall textual description of the operating system,
                        version and subtype.

     The window field corresponds to the th->th_win field in the TCP header and
     is the source host's advertised TCP window size.  It may be between zero
     and 65,535 inclusive.  The window size may be given as a multiple of a
     constant by prepending the size with a percent sign ‘%’ and the value will
     be used as a modulus.  Three special values may be used for the window
     size:

           *    An asterisk will wildcard the value so any window size will
                match.
           S    Allow any window size which is a multiple of the maximum segment
                size (MSS).
           T    Allow any window size which is a multiple of the maximum
                transmission unit (MTU).

     The ttl value is the initial time to live in the IP header.  The
     fingerprint code will account for the volatility of the packet's TTL as it
     traverses a network.

     The df bit corresponds to the Don't Fragment bit in an IPv4 header.  It
     tells intermediate routers not to fragment the packet and is used for path
     MTU discovery.  It may be either a zero or a one.

     The packet size is the literal size of the full IP packet and is a function
     of all of the IP and TCP options.

     The TCP options field is an ordered list of the individual TCP options that
     appear in the SYN packet.  Each option is described by a single character
     separated by a comma and certain ones may include a value.  The options
     are:

           Mnnn         maximum segment size (MSS) option.  The value is the
                        maximum packet size of the network link which may
                        include the ‘%’ modulus or match all MSSes with the ‘*’
                        value.
           N            the NOP option (NO Operation).
           T[0]         the timestamp option.  Certain operating systems always
                        start with a zero timestamp in which case a zero value
                        is added to the option; otherwise no value is appended.
           S            the Selective ACKnowledgement OK (SACKOK) option.
           Wnnn         window scaling option.  The value is the size of the
                        window scaling which may include the ‘%’ modulus or
                        match all window scalings with the ‘*’ value.

     No TCP options in the fingerprint may be given with a single dot ‘.’.

     An example of OpenBSD's TCP options are:

           M*,N,N,S,N,W0,N,N,T

     The first option M* is the MSS option and will match all values.  The
     second and third options N will match two NOPs.  The fourth option S will
     match the SACKOK option.  The fifth N will match another NOP.  The sixth W0
     will match a window scaling option with a zero scaling size.  The seventh
     and eighth N options will match two NOPs.  And the ninth and final option T
     will match the timestamp option with any time value.

     The TCP options in a fingerprint will only match packets with the exact
     same TCP options in the same order.

     The class field is the class, genre or vendor of the operating system.

     The version is the version of the operating system.  It is used to
     distinguish between different fingerprints of operating systems of the same
     class but different versions.

     The subtype is the subtype or patch level of the operating system version.
     It is used to distinguish between different fingerprints of operating
     systems of the same class and same version but slightly different patches
     or tweaking.

     The description is a general description of the operating system, its
     version, patchlevel and any further useful details.

EXAMPLES
     The fingerprint of a plain OpenBSD 3.3 host is:

       16384:64:1:64:M*,N,N,S,N,W0,N,N,T:OpenBSD:3.3::OpenBSD 3.3

     The fingerprint of an OpenBSD 3.3 host behind a PF scrubbing firewall with
     a no-df rule would be:

       16384:64:0:64:M*,N,N,S,N,W0,N,N,T:OpenBSD:3.3:!df:OpenBSD 3.3 scrub no-df

     An absolutely braindead embedded operating system fingerprint could be:

       65535:255:0:40:.:DUMMY:1.1:p3:Dummy embedded OS v1.1p3

     The tcpdump(1) output of

       # tcpdump -s128 -c1 -nv 'tcp[13] == 2'
       03:13:48.118526 10.0.0.1.3377 > 10.0.0.2.80: S [tcp sum ok] \
           534596083:534596083(0) win 57344 <mss 1460> (DF) [tos 0x10] \
           (ttl 64, id 11315, len 44)

     almost translates into the following fingerprint

       57344:64:1:44:M1460:  exampleOS:1.0::exampleOS 1.0

SEE ALSO
     pf.conf(5), pfctl(8), tcpdump(1)

