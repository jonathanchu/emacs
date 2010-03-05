#!/usr/bin/env python
# encoding: utf-8

import sys
import os

home = os.path.expanduser('~')

if os.path.exists(os.path.join(home, '.emacs')):
    print '.emacs already exists'
else:
    os.symlink(os.path.join(os.getcwd(), 'emacs.el'), os.path.join(home, '.emacs'))
    os.symlink(os.getcwd(), os.path.join(home, '.emacs.d'))
    os.system('git submodule update --init')