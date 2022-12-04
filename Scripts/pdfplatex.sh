#!/usr/share/texmf/ptex/platex/misc/sh
platex $1 || exit 1
dvipdfmx $1 || exit 1
