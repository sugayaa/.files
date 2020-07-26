#!/bin/bash
pactl load-module module-jack-sink client_name=Spotify
pactl load-module module-jack-source client_name=Spotify-stereo channels=2
