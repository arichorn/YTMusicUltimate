ARCHS = arm64
TARGET = iphone:clang:16.2:14.0
PACKAGE_VERSION = 1.5.0
THEOS_DEVICE_IP = localhost -p 2222
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic

ifeq ($(SIDELOADING),1)
MODULES = jailed
DISPLAY_NAME = YouTube Music
BUNDLE_ID = com.google.ios.youtubemusic
CODESIGN_IPA = 0
YTMusicUltimate_IPA = ./tmp/Payload/YouTubeMusic.app
YTMusicUltimate_FRAMEWORKS = UIKit Security Foundation CoreGraphics
endif
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = YTMusicUltimate
YTMusicUltimate_FILES = Sideloading.xm $(wildcard **/*.xm) $(wildcard **/*.m)
YTMusicUltimate_CFLAGS = -fobjc-arc
include $(THEOS_MAKE_PATH)/tweak.mk
