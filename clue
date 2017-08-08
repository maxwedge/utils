$ man clue
Reformatting page.  Please Wait... done

User Commands                                             CLUE(1)

NAME
     clue -   request a clue locally, remotely or globally

SYNOPSIS
     clue [-frtv9GW] [user...]

DESCRIPTION
     clue requests a clue for the local user (default) or  for  a
     remote  user  through the Clue Request Broker /etc/clue/crb.
     Persistent clue requests are maintained in /etc/cluetab  and
     are    executed   by   the   clue   daemon,   started   from
     /etc/init.d/clued, at scheduled  intervals  defined  in  the
     cluetab file.

OPTIONS
     -f   Force clue propagation. If the braind  associated  with
          the  user's uid is in a zombie state, this option sends
          a SIGHUP to the user's  brain  daemon  and  requests  a
          fresh clue.

     -r [domain...]
          Recursively propagate across  a  subdomain  or  domain,
          such  as  corporate.smike.com. Depending on the size of
          the domain and density of the users,  this  option  may
          take  quite  a  while  to  complete.  Note that certain
          domains, particularly the .gov  top-level  domain,  may
          invalidate clues faster than they can be propagated.

     -t   Today. Request clue propagation as soon as possible.

     -v   Verbose. Display the clue to the user's tty. A copy  is
          written  to /var/adm/cluelog or the syslog server. Also
          redirects /opt/clue/derr.au to /dev/audio.

     -9   Force   a   braind   SIGHUP   utilizing   the    STDBFH
          /dev/bighammer by calling touch(1).

     -G [group...]
          Group clue request. Issue a clue request to  an  entire
          group  or organization.  May be used globally. Compati-
          ble with LDAP, NIS and NIS+.

     -W   Issue a Whiskey Tango  Foxtrot  request  to  the  user.
          Requests  are resent every 60 seconds until a WTFack is
          received.

SEE ALSO
     clued(1), cluetab(1), crb(1), duh(1), windowsuser(1)

BUGS
     clue must include -9 when the "-G marketing" option is used.

NOTES
     Source for clue is available in the SMIKEutil package.

SunOS 5.9                 Last change:

$
Click <a href="https://github.com/maxwedge/utils/clue.1">here</a> to download the nroff file for the clue utility man page. 
Drop it in /usr/share/man/man1 and chmod to 444.
