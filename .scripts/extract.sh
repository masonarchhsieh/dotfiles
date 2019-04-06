#!/bin/bash - 
#===============================================================================
#
#          FILE: extract.sh
# 
#         USAGE: ./extract.sh 
# 
#   DESCRIPTION: Extract the config setting from GNOME
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 02/08/2019 04:38:13 PM
#      REVISION:  ---
#===============================================================================

#!/bin/sh
gst=/usr/share/gnome-shell/gnome-shell-theme.gresource
workdir=${HOME}/shell-theme

for r in `gresource list $gst`; do
    r=${r#\/org\/gnome\/shell/}
    if [ ! -d $workdir/${r%/*} ]; then
        mkdir -p $workdir/${r%/*}
    fi
done

for r in `gresource list $gst`; do
    gresource extract $gst $r >$workdir/${r#\/org\/gnome\/shell/}
done

