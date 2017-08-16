#!/usr/bin/env python

# NOTE: currently doesn't work if Dropbox misses a gram
#         (or in any other case where "latestgram (1)" is skipped..?)

import os

os.chdir('/home/winfield/Dropbox/Public/dteli/images')

if 'latestgram (1).jpg' in os.listdir() and 'latestgram.jpg' in os.listdir():
    os.remove('latestgram.jpg')
    os.rename('latestgram (1).jpg', 'latestgram.jpg')
