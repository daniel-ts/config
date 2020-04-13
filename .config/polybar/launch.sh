#!/bin/bash

killall -q polybar
polybar status -r & disown %-
