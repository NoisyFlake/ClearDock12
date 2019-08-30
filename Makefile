INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ClearDock12

ClearDock12_FILES = ClearDock12.xm
ClearDock12_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
