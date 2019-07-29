LOCAL_PATH := $(call my-dir)

ifneq ($(filter ASUS_X00TD,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif