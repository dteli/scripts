#!/usr/bin/sh

gennewpost.py

sleep 1

emacsclient -nc "~/dte.li/site/drafts/$(date -I).md"

