# *-* coding uft-8 *-*

import os
import os.path
import sys

root_path = sys.path[0]
work_path = sys.path[0] + '\LuaSrc'
filename = work_path + '\\files.txt'

def getFile():
    txt = ""
    start = len(root_path) + 1
    for root,dirs,files in os.walk(work_path):      
        for file in files:    
            txt += root[start:] + '=' + file + '\n'
    
    f = open(filename,'w')
    f.write(txt)
    f.close()


if __name__ == '__main__':
    getFile()
    input('----------------enter---------------')