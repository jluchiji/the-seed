#
# macos/defaults/ssd.sh
#
# @author  Matias Bynens <https://mathiasbynens.be>
# @author  Denis Luchkin-Zhou <wyvernzora@gmail.com>
# @license MIT
#

#
# Disable the sudden motion sensor as it’s not useful for SSDs
#
sudo pmset -a sms 0
