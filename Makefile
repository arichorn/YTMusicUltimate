TARGET = iphone:clang:16.1:12.1.2
THEOS_DEVICE_IP = 192.168.2.4
YTMusicUltimate_USE_FLEX = 0
YTMusicUltimate_USE_FISHHOOK = 0
ARCHS = arm64
MODULES = jailed
FINALPACKAGE = 1
CODESIGN_IPA = 0
INSTALL_TARGET_PROCESSES = SpringBoard YouTubeMusic
PACKAGE_VERSION = 1.2.6

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTMusicUltimate

YTMusicUltimate_FILES = $(shell find Source -name '*.xm' -o -name '*.x' -o -name '*.m')
YTMusicUltimate_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
