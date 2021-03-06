#!/bin/bash
#Author:丁丁历险(Jacob)
#Summary:Enable tab complete for python
#Description:
# Needs import readline and rlcompleter module
# import readline
# import rlcompleter
# help(rlcompleter) display detail: readline.parse_and_bind('tab: complete')
# man python display detail: PYTHONSTARTUP variable
if [ ! -f /usr/bin/tab.py ]; then
    cat >>/usr/bin/tab.py <<EOF
import readline
import rlcompleter
readline.parse_and_bind('tab: complete')
EOF
fi
sed -i '$a export PYTHONSTARTUP=/usr/bin/tab.py' /etc/profile
source /etc/profile
