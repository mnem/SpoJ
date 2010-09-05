Overview
========

Simple jukebox daemon for Spotify to people to vote on what tracks are playing.

TODO
----
* Startup config file
* Config: listening port
* Config: playlist
* Load playlist and randomise
* Update playlist based on edits
* Communicate with daemon via telnet
* Config: motd
* Command: `list [<filter>|<number>]`
* Command: `history [<filter>|<number>]`
* Implement song name fragment parsing. If multiple matches, return enumerated list.
* Command: `vote [song name fragment]`
* Command: `kill [song name fragment]`
* Command: `delete [song name fragment]`
