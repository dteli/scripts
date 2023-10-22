#!/usr/bin/sh


mpd;

sleep 2;

sudo mpdas -d;

sleep 2;

systemctl --user import-environment;

sleep 2;

systemctl --user restart emacs.service;
