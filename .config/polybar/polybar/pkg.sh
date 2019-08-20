#!/bin/bash - 
#===============================================================================
#
#          FILE: pkg.sh
# 
#         USAGE: ./pkg.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/20/2019 04:13:04 PM
#      REVISION:  ---
#===============================================================================

xbps=$(xbps-install -Mnu 2> /dev/null | wc -l)

echo " $xbps "
