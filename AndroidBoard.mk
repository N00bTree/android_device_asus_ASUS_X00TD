LOCAL_PATH := $(call my-dir)

ifneq ($(filter X00T,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)

# Hack some props to allow stock ROM flashing
BOARD_RECOVERY_IMAGE_PREPARE := \
    sed -i 's/ro.bootimage.build.date.utc=.*/ro.bootimage.build.date.utc=0/' $(TARGET_RECOVERY_ROOT_OUT)/prop.default; \
    sed -i 's/ro.build.date.utc=.*/ro.build.date.utc=0/' $(TARGET_RECOVERY_ROOT_OUT)/prop.default; \
    sed -i 's/ro.product.device=.*/ro.product.device=ASUS_X00TD/' $(TARGET_RECOVERY_ROOT_OUT)/prop.default

endif
