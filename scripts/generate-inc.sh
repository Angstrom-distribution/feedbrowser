#!/bin/sh

cat feed-header.txt > config.inc
sh generate-feedconf.sh >> config.inc

cat 2012.05-header.txt >> config.inc
sh generate-feedconf.sh >> config.inc

cat core-header.txt >> config.inc
sh generate-feedconf.sh >> config.inc

cat next-header.txt >> config.inc
sh generate-feedconf.sh >> config.inc

cat feed-footer.txt >> config.inc

