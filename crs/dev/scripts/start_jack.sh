#!/bin/bash

jack_control start
jack_control ds alsa
jack_control dps device hw:2,0
jack_control dps rate 96000
jack_control dps nperiods 3
jack_control dps period 128
