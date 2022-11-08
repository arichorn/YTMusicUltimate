ARCHS = arm64
THEOS_DEVICE_IP = localhost -p 2222
MODULES = jailed
CODESIGN_IPA = 0
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic
TARGET = iphone:clang:16.1:13.0
PACKAGE_VERSION = 1.2.6

include $(THEOS_MAKE_PATH)/tweak.mk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

YTMusicUltimate_FILES = $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
YTMusicUltimate_CFLAGS = -fobjc-arc
