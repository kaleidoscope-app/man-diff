emlog(8)                     System Manager's Manual                    emlog(8)

NAME
     emlog – Event Monitor Log Scraper

SYNOPSIS
     emlog [-p udp_port] [-l]

DESCRIPTION
     emlog is a perl script that scans log messages either fed through stdin or
     via a local UDP port, looking for authentication failures and other
     security notices, and feeding them as events to the Event Monitor (emond)

     Options:

     -p udp_port_number
              Tells emlog to listen on the given local port number, processing
              the UDP packets as single lines in a way compatible with syslogd

     -l       Tells emlog to process a single line of text then quit.

FILES
     /usr/libexec/emlog.pl                         The executable
     /usr/libexec/xssendevent                      Tool that sends events to
                                                   emond
     /System/Library/LaunchDaemons/com.apple.emlog.plist
                                                   the launchd config file

SEE ALSO
     emond(8), launchd(8), xssendevent(8)

