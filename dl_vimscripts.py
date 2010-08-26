#!/usr/bin/python
#----------------------------------------------
# dl_vimscripts.py
# @Author        : Taurus Olson
# @License       : GPL (see http://www.gnu.org/licenses/gpl.txt)
# @Created       : 2010-08-18.
# @Revision      : 0.0
#----------------------------------------------

from BeautifulSoup import BeautifulSoup
import urllib2, re, os

def writeFile(fname, message, mode='w'):
    """Simply write data to a file"""
    
    f = open(fname, mode)
    f.write(message)
    f.write("\n")
    f.close()
    
# <a href="download_script.php?src_id=9497">NERD_commenter.zip</a>

filename = os.path.join(os.getenv('HOME'), 'vimscripts.dat')
regex = re.compile("\d+")
url_dl = "http://www.vim.org/scripts/download_script.php?src_id="
url_script = "http://www.vim.org/scripts/script.php?script_id="

for script_id in range(733, 3216):
    page = urllib2.urlopen(url_script+str(script_id))
    soup = BeautifulSoup(page)
    line = soup.find(href=re.compile("src_id=\d+"))
    try:
        src_id = regex.search(str(line)).group()
        print script_id, line.contents[0], src_id
        data = "%s\t%s\t%s" % (script_id, line.contents[0], url_dl+str(src_id))
        writeFile(filename, data, 'a')
    except:
        pass

