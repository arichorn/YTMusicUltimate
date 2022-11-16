ARCHS = arm64
TARGET = iphone:clang:16.1:12.1.2
PACKAGE_VERSION = 1.2.7
THEOS_DEVICE_IP = localhost -p 2222
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic

ifeq ($(SIDELOADED),1)
MODULES = jailed
DISPLAY_NAME = YouTube Music
BUNDLE_ID = com.google.ios.youtubemusic
CODESIGN_IPA = 0

YTMusicUltimate_IPA = ./tmp/Payload/YouTubeMusic.app
YTMusicUltimate_FRAMEWORKS = UIKit Security Foundation CoreGraphics
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

YTMusicUltimate_FILES = $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
YTMusicUltimate_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
