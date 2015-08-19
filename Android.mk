LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),h324)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
