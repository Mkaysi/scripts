#!/usr/bin/env bash
# This script downloads external ZNC modules which I use.
set -x
cd znc
cd modules
curl -LO https://raw.githubusercontent.com/DarthGandalf/znc/dgmods/modules/kvirc.cpp
curl -LO https://raw.githubusercontent.com/kylef/znc-contrib/master/privmsg.cpp
curl -LO https://github.com/NuclearW/znc-modules/raw/master/away_notify/away_notify.cpp
curl -LO https://github.com/NuclearW/znc-modules/raw/master/away_notify/away_notify_unsolicited.cpp

# ~/.znc/modules for mod* modules
mkdir -p ~/.znc/modules
cd ~/.znc/modules
curl -LO https://raw.githubusercontent.com/jreese/znc-push/python/push.py
