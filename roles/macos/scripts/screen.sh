#
# macos/defaults/screen.sh
#
# @author  Matias Bynens <https://mathiasbynens.be>
# @author  Denis Luchkin-Zhou <wyvernzora@gmail.com>
# @license MIT
#


#
# Require password immediately after sleep or screen saver begins
#
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


#
# Save screenshots to the desktop
#
defaults write com.apple.screencapture location -string "${HOME}/Desktop"


#
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
#
defaults write com.apple.screencapture type -string "png"


#
# Disable shadow in screenshots
#
defaults write com.apple.screencapture disable-shadow -bool true


#
# Enable subpixel font rendering on non-Apple LCDs
#
defaults write NSGlobalDomain AppleFontSmoothing -int 2


#
# Enable HiDPI display modes (requires restart)
#
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
