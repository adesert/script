#!/usr/bin/env python
#coding=utf-8
#
# ./download-deps.py
#
# Download Cocos2D-X resources from github (https://github.com/cocos2d/cocos2d-x-3rd-party-libs-bin) and extract from ZIP
#
# Helps prevent repo bloat due to large binary files since they can
# be hosted separately.
#

"""****************************************************************************
Copyright (c) 2014 cocos2d-x.org
Copyright (c) 2014 Chukong Technologies Inc.

http://www.cocos2d-x.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************"""

###目标文件夹 从这个文件夹中复制和替换文件到当前文件夹中

import os.path,zipfile
import shutil
import sys
import traceback
import distutils
import fileinput
import json

# from optparse import OptionParser
from time import time
from sys import stdout
from distutils.errors import DistutilsError
from distutils.dir_util import copy_tree, remove_tree

_workpath=''
_extracted_folder_name = ''


class UnrecognizedFormat:
    def __init__(self, prompt):
        self._prompt = prompt
    def __str__(self):
        return self._prompt

def main():
    _workpath = os.path.dirname(os.path.realpath(__file__))

    # 目标文件夹 从这个文件夹中复制和替换文件到当前文件夹中
    _extracted_folder_name = 'cocos2d-x-3rd-party-libs-bin-2-deps-6'

    print("_workpath= "+_workpath);

    print("==> Copying files...")
    folder_for_extracting = _workpath
    if not os.path.exists(folder_for_extracting):
        os.mkdir(folder_for_extracting)
    distutils.dir_util.copy_tree(_extracted_folder_name, folder_for_extracting)
    print("==> Cleaning...")
    if os.path.exists(_extracted_folder_name):
        shutil.rmtree(_extracted_folder_name)


    print("==> DONE! Prebuilt libraries were installed successfully! Cheers!")

# -------------- main --------------
if __name__ == '__main__':
    try:
        main()
    except Exception as e:
        traceback.print_exc()
        sys.exit(1)
