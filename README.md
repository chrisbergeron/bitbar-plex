## About

This is a <a href="https://getbitbar.com">Bitbar</a> plugin that shows you if your <a href="https://plex.tv">Plex</A> installation is reachable.  It requires bash and curl and the IP/hostname of your Plex server.

![BitBar Plex](https://res.cloudinary.com/cyberge/image/upload/v1550632374/screenshots/vzykubr9r445oxar6aa4.png)

## Usage

Install into your Bitbar plugin directory.  Update the environment variables for your configuration.  The `pinghost` variable can be the same as the `plexhost` variable (presuming the server is pingable).

## Configuration
The `pinghost` value is use in cases where you may have a VPN connection to the environment where the local Plex server lives.  The script won't attempt to curl the Plex identity if the host is unreachable.  This can be any pingable host on your network.
The `plexhost` value is the hostname or IP address of your Plex server.

## To Do
- Display currently playing if something is active or number of current sessions

## Misc
[Join the conversation with plugin authors and BitBar maintainers on Slack](https://getbitbar.herokuapp.com/)

Plex is registered trademark of Plex.