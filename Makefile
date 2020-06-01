ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KeepMyJB

KeepMyJB_FILES = Tweak.xm
KeepMyJB_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
