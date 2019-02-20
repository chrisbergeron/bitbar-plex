#!/bin/bash

# <bitbar.title>Plex Status</bitbar.title>
# <bitbar.version>v0.3</bitbar.version>
# <bitbar.author>Chris Bergeron</bitbar.author>
# <bitbar.author.github>chrisbergeron</bitbar.author.github>
# <bitbar.desc>Display the status of Plex</bitbar.desc>
# <bitbar.image>https://res.cloudinary.com/cyberge/image/upload/v1550627901/icons/plex_878759_eey690.png</bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>

# Put your plex hostname here
plexhost="plex-01"
curlcmd=$(which curl)

# Put host to ping here (useful for vpn connections)
pinghost="plex-01"
pingcmd=$(which ping)

$pingcmd -c1 $plexhost > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "--"
  echo "---"
  echo "Can't ping $pinghost"
  exit
fi

$curlcmd -s http://$plexhost:32400/identity > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "| templateImage=iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAQAAAC1+jfqAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAAC4kAAAuJATfJy60AAAAHdElNRQfjAhMPKzgxRmpXAAAAuUlEQVQoz5XRMU4CYRQE4O93LbCFtZDQ2dGItS2n4AKchFNwAbnIVhYmW1GTEBJDgiGRbh+FGyPwR+I0r5iZvHlvgGSmEcLeUBalWghhofubKNr55dNYBw823sW5gLW+Z0lH6c3mUnCw8mQgGbhVOZwL+FB4cSd5tFTnonYt2qi1Mn/N0F4IjZkEN/6FKysKU1sh7Exy/pFKIzTmepd0z7ylK6Ocf2InhK3pyXda3P+U9Xpa1jf+qPsIyJ5B7rJwvZwAAAAldEVYdGRhdGU6Y3JlYXRlADIwMTktMDItMTlUMjA6NDQ6MDAtMDU6MDBDoNoZAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDE5LTAyLTE5VDIwOjQzOjU2LTA1OjAw+xFCggAAAABJRU5ErkJggg=="
  echo "---"
  echo "Plex is up | color=green"
else
  echo "X"
  echo "---"
  echo "Plex is unreachable | color=red"
  echo "$plexhost"
fi