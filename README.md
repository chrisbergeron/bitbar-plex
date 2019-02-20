## About

This is a <a href="https://getbitbar.com">Bitbar</a> plugin that shows you what's currently playing on your <a href="https://plex.tv">Plex</A> setup.
  
![BitBar Plex](https://res.cloudinary.com/cyberge/image/upload/v1550632374/screenshots/vzykubr9r445oxar6aa4.png)

## Requirements

This plugin / script uses bash.  Additionally you'll need the following packages installed:

- Imagemagick:  used for the `mogrify` command.
- base64: used to convert image into a format BitBar can handle easily
- curl: used to make API calls to Plex

To see if you have these installed, open a terminal in OS X and run:
```
which mogrify
which base64
which curl
which ping
```

On my Macbook, these files are:
```
- /usr/local/bin/mogrify
- /usr/bin/base64
- /usr/bin/curl
- /bin/ping
```
Adjust these paths if necessary.

## Usage

Install into your Bitbar plugin directory.  Update the environment variables for your configuration.  The `pinghost` variable can be the same as the `plexhost` variable (presuming the server is pingable).

## Configuration

Update the values in the plugin as follows:

Rename the plugin to adjust how frequently it refreshes.  I don't recommend setting too low of a refresh rate, but your usage may vary.  The default is 5 minutes, hence the `.5m.` in the filename.

The `pinghost` value is use in cases where you may have a VPN connection to the environment where the local Plex server lives.  The script won't attempt to curl the Plex identity if the host is unreachable.  This can be any pingable host on your network.
The `plexhost` value is the hostname or IP address of your Plex server.
The `plextoken` value is your Plex authentication token.  You can [see how to get it here](https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/)

## To Do
- Clean up the code
- Display currently playing if something is active or number of current sessions
- Possibly rewrite in python

## Misc
[Join the conversation with plugin authors and BitBar maintainers on Slack](https://getbitbar.herokuapp.com/)

Plex is registered trademark of Plex.