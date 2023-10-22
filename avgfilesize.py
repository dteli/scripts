#!/usr/bin/env python3

from os import listdir
from os.path import getsize

files = listdir()

num_files = len(files)
total_size = sum(map(getsize, files))
avg_size_raw = total_size / num_files

suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB']
i = 0
while avg_size_raw > 1024 and i < len(suffixes):
	avg_size_raw /= 1024
	i += 1

print(f"Average file size: {avg_size_raw:.2f} {suffixes[i]}")