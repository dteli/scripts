#!/usr/bin/env python

import os
import datetime
from datetime import datetime as dt
from datetime import date

os.chdir('/home/winfield/Dropbox/_etd.is/posts')

d = date.isoformat(date.today())

newdraft = open(d+".md", 'w')

dfull = dt.isoformat(dt.now(), timespec='seconds')

# https://stackoverflow.com/questions/2720319/python-figure-out-local-timezone
local_tz = datetime.datetime.now(datetime.timezone(datetime.timedelta(0))).astimezone().tzinfo

offset_td = local_tz.utcoffset(dt.now())

offset = offset_td.days * 24 + offset_td.seconds / 3600

str_offset = str(offset).zfill(5).replace('.', ':') + '0'

final_iso_dt = dfull + str_offset

newdraft.write(f"""---
title: 
author: Eli T. Drumm
date: {final_iso_dt}
category: 
tags: 
published: false
---


""")

newdraft.close()
