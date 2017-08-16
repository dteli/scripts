#!/usr/bin/env python

import os
from datetime import date

os.chdir('/home/winfield/dte.li/site/drafts')

d = date.isoformat(date.today())

newdraft = open(d+".md", 'w')

newdraft.write("---\ntitle: \nauthor: Eli T. Drumm\ndate: "+d+"\n---\n\n")

newdraft.close()
