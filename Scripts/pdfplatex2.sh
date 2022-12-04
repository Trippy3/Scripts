#!/bin/sh

platex -synctex=1 "$1" && \
dvipdfmx -f ptex-ipaex.map "`basename "$1" .tex`"
