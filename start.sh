#!/bin/bash
pogo -cw /StarLogs/javascripts/*.pogo&
sass --watch /StarLogs/stylesheets:stylesheets&
static -a 0.0.0.0 /StarLogs/
