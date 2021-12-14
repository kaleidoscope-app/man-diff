SCANDEPS(1)            User Contributed Perl Documentation           SCANDEPS(1)




NAME
       scandeps.pl - Scan file prerequisites

SYNOPSIS
           % scandeps.pl *.pm          # Print PREREQ_PM section for *.pm
           % scandeps.pl -e 'STRING'   # Scan an one-liner
           % scandeps.pl -B *.pm       # Include core modules
           % scandeps.pl -V *.pm       # Show autoload/shared/data files
           % scandeps.pl -R *.pm       # Don't recurse
           % scandeps.pl -C CACHEFILE  # use CACHEFILE to cache dependencies

DESCRIPTION
       scandeps.pl is a simple-minded utility that prints out the "PREREQ_PM"
       section needed by modules.

       If the option "-T" is specified and you have CPANPLUS installed, modules
       that are part of an earlier module's distribution with be denoted with
       "S"; modules without a distribution name on CPAN are marked with "?".

       Also, if the "-B" option is specified, module belongs to a perl
       distribution on CPAN (and thus uninstallable by "CPAN.pm" or
       "CPANPLUS.pm") are marked with "C".

       Finally, modules that has loadable shared object files (usually needing a
       compiler to install) are marked with "X"; with the "-V" flag, those files
       (and all other files found) will be listed before the main output.
       Additionally, all module files that the scanned code depends on but were
       not found (and thus not scanned recursively) are listed. These may
       include genuinely missing modules or false positives. That means, modules
       your code does not depend on (on this particular platform) but that were
       picked up by the heuristic anyway.

OPTIONS
       -e, --eval=STRING
           Scan STRING as a string containing perl code.

       -c, --compile
           Compiles the code and inspects its %INC, in addition to static
           scanning.

       -x, --execute
           Executes the code and inspects its %INC, in addition to static
           scanning.  You may use --xargs to specify @ARGV when executing the
           code.

       --xargs=STRING
           If -x is given, splits the "STRING" using the function "shellwords"
           from Text::ParseWords and passes the result as @ARGV when executing
           the code.

       -B, --bundle
           Include core modules in the output and the recursive search list.

       -R, --no-recurse
           Only show dependencies found in the files listed and do not recurse.

       -V, --verbose
           Verbose mode: Output all files found during the process; show
           dependencies between modules and availability.

           Additionally, warns of any missing dependencies. If you find missing
           dependencies that aren't really dependencies, you have probably found
           false positives.

       -C, --cachedeps=CACHEFILE
           Use CACHEFILE to speed up the scanning process by caching
           dependencies.  Creates CACHEFILE if it does not exist yet.

       -T, --modtree
           Retrieves module information from CPAN if you have CPANPLUS
           installed.

SEE ALSO
       Module::ScanDeps, CPANPLUS::Backend, PAR

ACKNOWLEDGMENTS
       Simon Cozens, for suggesting this script to be written.

AUTHORS
       Audrey Tang <autrijus@autrijus.org>

COPYRIGHT
       Copyright 2003, 2004, 2005, 2006 by Audrey Tang <autrijus@autrijus.org>.

       This program is free software; you can redistribute it and/or modify it
       under the same terms as Perl itself.

       See <http://www.perl.com/perl/misc/Artistic.html>



