#!/usr/bin/env python3

import json
from subprocess import run, PIPE

pkglist_str = run(["pip", "list", "--outdated", "--format=json"], stdout=PIPE, text=True)

pkglist = json.loads(pkglist_str.stdout)
pkglist = filter(lambda p: not "editable_project_location" in p, pkglist)

pkgnames = map(lambda p: p['name'], pkglist)

run(["pip", "install", "-U", *pkgnames])

